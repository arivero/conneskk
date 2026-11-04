-- Pandoc Lua filter for the Supplemental Material (called by paper/build_supplement.sh).
-- It changes how material wider than the line is set and leaves the text itself unchanged:
--   * displayed formulas are passed to the TeX macro \suppdisplay of supplement_layout.tex;
--   * tables that do not fit the line get a smaller font and column widths computed from the cell contents;
--   * long inline code and long file names get break points.
-- Metadata set by the script: supp_textwidth (width of the text block in pt).

local textwidth = 469.75

local function read_meta(meta)
  if meta.supp_textwidth then textwidth = tonumber(pandoc.utils.stringify(meta.supp_textwidth)) or textwidth end
end

-- warnings always reach stderr; notes only under pandoc --verbose
local verbose = PANDOC_STATE ~= nil and PANDOC_STATE.verbosity == "INFO"
local function warn(msg) io.stderr:write("supplement_layout.lua: warning: " .. msg .. "\n") end
local function note(msg) if verbose then io.stderr:write("supplement_layout.lua: " .. msg .. "\n") end end

------------------------------------------------------------------------------------------------
-- Width estimates, in thousandths of an em of Latin Modern Roman 10 (advance widths of the font).

local CW = {
  [32]=333,[33]=278,[34]=374,[35]=833,[36]=500,[37]=833,[38]=778,[39]=278,[40]=389,[41]=389,[42]=500,[43]=778,
  [44]=278,[45]=333,[46]=278,[47]=500,[48]=500,[49]=500,[50]=500,[51]=500,[52]=500,[53]=500,[54]=500,[55]=500,
  [56]=500,[57]=500,[58]=278,[59]=278,[60]=778,[61]=778,[62]=778,[63]=472,[64]=778,[65]=750,[66]=708,[67]=722,
  [68]=764,[69]=681,[70]=653,[71]=785,[72]=750,[73]=361,[74]=514,[75]=778,[76]=625,[77]=917,[78]=750,[79]=778,
  [80]=681,[81]=778,[82]=736,[83]=556,[84]=722,[85]=750,[86]=750,[87]=1028,[88]=750,[89]=750,[90]=611,[91]=278,
  [92]=500,[93]=278,[94]=556,[95]=750,[96]=500,[97]=500,[98]=556,[99]=444,[100]=556,[101]=444,[102]=306,
  [103]=500,[104]=556,[105]=278,[106]=306,[107]=528,[108]=278,[109]=833,[110]=556,[111]=500,[112]=556,
  [113]=528,[114]=392,[115]=394,[116]=389,[117]=556,[118]=528,[119]=722,[120]=528,[121]=528,[122]=444,
  [123]=500,[124]=278,[125]=500,[126]=556,
  [0x2013]=500,[0x2014]=1000,[0x2018]=278,[0x2019]=278,[0x201c]=472,[0x201d]=472,[0xd7]=778,[0xe9]=444,
  [0xe8]=444,[0xfc]=556,[0xf6]=500,[0xe4]=500,[0xa7]=484,[0xb0]=375,[0xb1]=778,[0x2026]=670,[0x2192]=1000,
  [0x221e]=1000,[0x394]=833,[0x39b]=694,
}
local MONO = 525          -- Latin Modern Mono advance width
local DEFAULT_W = 600     -- other characters (Greek letters, symbols)

local function str_w(s)
  local w = 0
  for _, cp in utf8.codes(s) do w = w + (CW[cp] or DEFAULT_W) end
  return w
end

-- When slash_breaks is true, the layout of a table allows a line break after each slash in a cell,
-- in text and in inline math (allow_slash_breaks below), and the estimates count it.  Numerals such as
-- 1/2 keep together: a slash is a break point only in a word of six or more characters that contains a letter.
local slash_breaks = false
local function breakable_slash(text)
  return #text >= 6 and text:find("%a") ~= nil and text:find("/", 1, true) ~= nil
end

-- Inline math: a rough estimate from the TeX source.  Returns the widths of the pieces between top-level
-- relations, binary operators and (if slash_breaks) slashes, which are the places where a cell may break.
local REL = { le=1, ge=1, leq=1, geq=1, ne=1, neq=1, to=1, rightarrow=1, mapsto=1, sim=1, simeq=1, approx=1,
              subset=1, subseteq=1, ["in"]=1, equiv=1, ll=1, gg=1, leftrightarrow=1, Rightarrow=1, iff=1, propto=1,
              perp=1, cong=1, longrightarrow=1, gets=1, leftarrow=1 }
local BIN = { pm=1, mp=1, times=1, cdot=1, oplus=1, otimes=1, circ=1, wedge=1, vee=1, cap=1, cup=1, setminus=1 }

local function math_pieces(src)
  local pieces = {}
  local i, n = 1, #src
  local function est(close)          -- width of a braced group (close = true), or of the rest (top level)
    local total = 0
    local function cut()
      if not close then pieces[#pieces + 1] = total; total = 0 end
    end
    while i <= n do
      local c = src:sub(i, i)
      if c == "{" then
        i = i + 1
        total = total + est(true)
      elseif c == "}" then
        i = i + 1
        if close then return total end
      elseif c == "\\" then
        local name = src:match("^\\(%a+)", i)
        if name then
          i = i + 1 + #name
          if name == "frac" or name == "dfrac" or name == "tfrac" or name == "binom" then
            local a, b = 0, 0
            if src:sub(i, i) == "{" then i = i + 1; a = est(true) end
            if src:sub(i, i) == "{" then i = i + 1; b = est(true) end
            total = total + math.max(a, b) * 0.9 + 150
          elseif name == "sqrt" then total = total + 800
          elseif name == "left" or name == "right" then i = i + 1; total = total + 400
          elseif name == "quad" then total = total + 1000
          elseif name == "qquad" then total = total + 2000
          elseif name == "text" or name == "mathrm" or name == "mathbf" or name == "mathbb" or name == "mathcal"
              or name == "mathsf" or name == "mathfrak" or name == "operatorname" or name == "rm" or name == "boldsymbol"
              or name == "mathit" or name == "mathtt" then
            -- the argument follows and is counted as ordinary text
          elseif REL[name] then total = total + 1334; cut()
          elseif BIN[name] then total = total + 1222; cut()
          elseif name == "sum" or name == "prod" or name == "infty" then total = total + 1000
          elseif name == "int" then total = total + 556
          else total = total + 650 end
        else
          local nxt = src:sub(i + 1, i + 1)
          i = i + 2
          if nxt == "," then total = total + 167
          elseif nxt == ";" then total = total + 278
          elseif nxt == " " then total = total + 333
          elseif nxt == "!" then total = total - 167
          else total = total + 500 end
        end
      elseif c == "^" or c == "_" then
        i = i + 1
        local sub
        if src:sub(i, i) == "{" then i = i + 1; sub = est(true)
        elseif src:sub(i, i) == "\\" then
          local nm = src:match("^\\(%a+)", i)
          if nm then i = i + 1 + #nm; sub = 650 else sub = 500; i = i + 2 end
        else sub = CW[src:byte(i) or 120] or 500; i = i + 1 end
        total = total + sub * 0.7
      elseif c == "=" or c == "<" or c == ">" then i = i + 1; total = total + 1334; cut()
      elseif c == "+" or c == "-" then i = i + 1; total = total + 1222; cut()
      elseif c == "/" then
        i = i + 1; total = total + 500
        if slash_breaks and breakable_slash(src) then cut() end
      elseif c == "," then i = i + 1; total = total + 445
      elseif c == " " or c == "\n" or c == "\t" then i = i + 1
      elseif c == "'" then i = i + 1; total = total + 280
      else
        local cp = utf8.codepoint(src, i)
        i = i + #utf8.char(cp)
        total = total + (CW[cp] or DEFAULT_W)
      end
    end
    return total
  end
  local rest = est(false)
  pieces[#pieces + 1] = rest
  return pieces
end

-- Widths of an inline list: maximum (one line) and minimum (longest unbreakable piece), in 1/1000 em.
-- TeX does not hyphenate the first word of a cell, so the estimate credits no hyphenation.
local estimate
estimate = function(inlines)
  local total, minw, cur = 0, 0, 0
  local function close() if cur > minw then minw = cur end; cur = 0 end
  local function add(w) total = total + w; cur = cur + w end
  local walk
  walk = function(list, scale)
    for _, il in ipairs(list) do
      local t = il.t
      if t == "Str" then
        local text = il.text
        if slash_breaks and breakable_slash(text) then text = text:gsub("/", "/ ") end
        local first = true
        for piece in (text .. " "):gmatch("(.-) ") do
          if not first then close() end
          first = false
          add(str_w(piece) * scale)
        end
      elseif t == "Space" or t == "SoftBreak" then
        total = total + 333 * scale
        close()
      elseif t == "LineBreak" then
        close()
      elseif t == "Code" then
        local first = true
        for piece in (il.text .. " "):gmatch("(.-) ") do
          if not first then total = total + MONO * scale; close() end
          first = false
          add((utf8.len(piece) or #piece) * MONO * scale)
        end
      elseif t == "Math" then
        local pieces = math_pieces(il.text)
        for k, pw in ipairs(pieces) do
          add(pw * scale)
          if k < #pieces then close() end
        end
      elseif t == "Emph" or t == "Span" or t == "Link" or t == "Quoted" or t == "SmallCaps" or t == "Underline"
          or t == "Strikeout" or t == "Cite" then
        walk(il.content, scale)
      elseif t == "Strong" then
        walk(il.content, scale * 1.08)
      elseif t == "Subscript" or t == "Superscript" then
        -- a script is a box, which cannot break
        local saved = slash_breaks
        slash_breaks = false
        local w = estimate(il.content)
        slash_breaks = saved
        add(w * 0.8 * scale)               -- 70 percent of the size, in the wider 7 pt design
      elseif t == "Note" or t == "RawInline" or t == "Image" then
        -- no width
      else
        add(str_w(pandoc.utils.stringify(il)) * scale)
      end
    end
  end
  walk(inlines, 1)
  close()
  return total, minw
end

local function blocks_inlines(blocks)
  local out = {}
  for _, b in ipairs(blocks) do
    if #out > 0 then out[#out + 1] = pandoc.Space() end
    if b.t == "Plain" or b.t == "Para" then
      for _, il in ipairs(b.content) do out[#out + 1] = il end
    else
      out[#out + 1] = pandoc.Str(pandoc.utils.stringify(b))
    end
  end
  return out
end

------------------------------------------------------------------------------------------------
-- Tables

-- Profiles tried in order: font size command, scale factor of the text, optical size factor, column separation.
-- Latin Modern Roman has optical sizes: the glyphs of the 9 pt and 8 pt designs are 2.7 and 6.1 percent wider
-- than those of the 10 pt design, in proportion to the size.
local PROFILES = {
  { size = nil,            f = 1.0, opt = 1.0,    tcs = 6.0 },
  { size = "small",        f = 0.9, opt = 1.0272, tcs = 5.0 },
  { size = "footnotesize", f = 0.8, opt = 1.0606, tcs = 4.0 },
  { size = "footnotesize", f = 0.8, opt = 1.0606, tcs = 3.0 },
}
local MARGIN = 1.04       -- safety factor on estimated widths

local function each_cell(tbl, fn)
  local function row(r) for i, c in ipairs(r.cells) do fn(c, i) end end
  for _, r in ipairs(tbl.head.rows) do row(r) end
  for _, b in ipairs(tbl.bodies) do
    for _, r in ipairs(b.head) do row(r) end
    for _, r in ipairs(b.body) do row(r) end
  end
  for _, r in ipairs(tbl.foot.rows) do row(r) end
end

local function table_stats(tbl, slash)
  slash_breaks = slash
  local n = #tbl.colspecs
  local maxw, minw = {}, {}
  for i = 1, n do maxw[i] = 0; minw[i] = 0 end
  each_cell(tbl, function(c, i)
    if i > n or (c.col_span or 1) ~= 1 then return end
    local mx, mn = estimate(blocks_inlines(c.contents))
    if mx > maxw[i] then maxw[i] = mx end
    if mn > minw[i] then minw[i] = mn end
  end)
  slash_breaks = false
  return maxw, minw
end

-- Column widths (as fractions of the available width): minimal widths first, then the room that is left.
local function css_widths(maxp, minp, avail)
  local n = #maxp
  local smin, smax = 0, 0
  for i = 1, n do smin = smin + minp[i]; smax = smax + maxp[i] end
  local w = {}
  if smax <= avail then
    for i = 1, n do w[i] = maxp[i] / smax end
  elseif smin >= avail then
    for i = 1, n do w[i] = minp[i] / smin end
  else
    -- the room left after the minimal widths goes to the columns by water filling: a column never receives more
    -- than it asks for (its widest cell on one line), and the columns that ask most share the rest equally,
    -- so that short cells stay on one line
    local extra = avail - smin
    local ask, order = {}, {}
    for i = 1, n do ask[i] = maxp[i] - minp[i]; order[i] = i end
    table.sort(order, function(a, b) return ask[a] < ask[b] end)
    local remaining, left = extra, n
    for _, i in ipairs(order) do
      local g = math.min(ask[i], remaining / left)
      w[i] = (minp[i] + g) / avail
      remaining = remaining - g
      left = left - 1
    end
  end
  -- normalise and truncate to four decimals, as pandoc prints them
  local s = 0
  for i = 1, n do s = s + w[i] end
  for i = 1, n do w[i] = math.floor(w[i] / s * 10000) / 10000 end
  return w
end

-- Allow a line break after each slash in the cells (text and inline math).
local function allow_slash_breaks(tbl)
  local function math_text(text)
    local out, depth, i = {}, 0, 1
    while i <= #text do
      local c = text:sub(i, i)
      if c == "\\" then
        out[#out + 1] = text:sub(i, i + 1); i = i + 2
      else
        if c == "{" then depth = depth + 1 elseif c == "}" then depth = depth - 1 end
        out[#out + 1] = c
        if c == "/" and depth == 0 then out[#out + 1] = "\\allowbreak " end
        i = i + 1
      end
    end
    return table.concat(out)
  end
  local filter = {
    Math = function(m)
      if m.mathtype == "InlineMath" and breakable_slash(m.text) then
        return pandoc.Math("InlineMath", math_text(m.text))
      end
    end,
    Str = function(s)
      if not breakable_slash(s.text) then return nil end
      local out, rest = {}, s.text
      while #rest > 0 do
        local a, b = rest:find("^[^/]*/")
        if not a then out[#out + 1] = pandoc.Str(rest); break end
        out[#out + 1] = pandoc.Str(rest:sub(a, b))
        out[#out + 1] = pandoc.RawInline("latex", "\\allowbreak{}")
        rest = rest:sub(b + 1)
      end
      return out
    end,
  }
  each_cell(tbl, function(c) c.contents = pandoc.walk_block(pandoc.Div(c.contents), filter).content end)
end

local function layout_table(tbl, depth, index)
  local n = #tbl.colspecs
  local L = textwidth - 25 * depth                     -- list items are narrower than the page text
  local explicit = tbl.colspecs[1][2] ~= nil
  local maxw0, minw0 = table_stats(tbl, false)         -- as pandoc sets the table
  local maxw1, minw1 = table_stats(tbl, true)          -- with line breaks after slashes
  local function px(profile, maxw, minw)               -- widths in pt for a profile
    local size = 10 * profile.f * profile.opt
    local maxp, minp = {}, {}
    for i = 1, n do
      maxp[i] = maxw[i] * size / 1000 * MARGIN
      minp[i] = minw[i] * size / 1000 * MARGIN
    end
    return maxp, minp
  end
  local function natural_total(profile)
    local maxp = px(profile, maxw0, minw0)
    local s = 2 * (n - 1) * profile.tcs
    for i = 1, n do s = s + maxp[i] end
    return s
  end
  local function avail(profile) return L - 2 * (n - 1) * profile.tcs end
  -- 1. the table as pandoc sets it
  if explicit then
    local _, minp = px(PROFILES[1], maxw0, minw0)
    local a, ok = avail(PROFILES[1]), true
    for i = 1, n do
      if (tbl.colspecs[i][2] or 0) * a < minp[i] then ok = false end
    end
    if ok then return { tbl } end
  elseif natural_total(PROFILES[1]) <= L then
    return { tbl }
  end
  -- 2. natural columns at a smaller font
  local chosen, widths
  for k = 2, #PROFILES do
    if natural_total(PROFILES[k]) <= L then chosen = PROFILES[k]; break end
  end
  if chosen then
    for i = 1, n do tbl.colspecs[i] = { tbl.colspecs[i][1], nil } end
  else
    -- 3. wrapped columns with widths from the cell contents
    local function deficit(profile, w)           -- width by which the cells exceed their columns, summed
      local maxp = px(profile, maxw1, minw1)
      local a, d = avail(profile), 0
      for i = 1, n do d = d + math.max(0, maxp[i] - w[i] * a) end
      return d
    end
    for k = 1, #PROFILES do
      local maxp, minp = px(PROFILES[k], maxw1, minw1)
      local smin = 0
      for i = 1, n do smin = smin + minp[i] end
      if smin <= avail(PROFILES[k]) then
        chosen = PROFILES[k]
        widths = css_widths(maxp, minp, avail(chosen))
        -- a smaller column separation of the same font size may wrap fewer cells
        local best = deficit(chosen, widths)
        for k2 = k + 1, #PROFILES do
          local P = PROFILES[k2]
          if P.size == PROFILES[k].size and best > 0 then
            local maxp2, minp2 = px(P, maxw1, minw1)
            local smin2 = 0
            for i = 1, n do smin2 = smin2 + minp2[i] end
            if smin2 <= avail(P) then
              local w2 = css_widths(maxp2, minp2, avail(P))
              local d2 = deficit(P, w2)
              if d2 < best then chosen, widths, best = P, w2, d2 end
            end
          end
        end
        break
      end
    end
    if not chosen then
      chosen = PROFILES[#PROFILES]
      local maxp, minp = px(chosen, maxw1, minw1)
      widths = css_widths(maxp, minp, avail(chosen))
      warn(string.format("table %d (%d columns) cannot be fitted by estimate; set at the smallest profile", index, n))
    end
    for i = 1, n do tbl.colspecs[i] = { tbl.colspecs[i][1], widths[i] } end
    allow_slash_breaks(tbl)
  end
  local open = "\\begingroup"
  if chosen.size then open = open .. "\\" .. chosen.size end
  open = open .. string.format("\\setlength{\\tabcolsep}{%gpt}", chosen.tcs)
  note(string.format("table %d, %d columns, depth %d: %s, tabcolsep %gpt, %s", index, n, depth,
    chosen.size or "normalsize", chosen.tcs, widths and "wrapped columns" or "natural columns"))
  return { pandoc.RawBlock("latex", open), tbl, pandoc.RawBlock("latex", "\\endgroup") }
end

local table_index = 0
local function process_blocks(blocks, depth)
  local out = pandoc.Blocks({})
  for _, b in ipairs(blocks) do
    local t = b.t
    if t == "Table" then
      table_index = table_index + 1
      for _, nb in ipairs(layout_table(b, depth, table_index)) do out:insert(nb) end
    elseif t == "BulletList" or t == "OrderedList" then
      local items = {}
      for i, item in ipairs(b.content) do items[i] = process_blocks(item, depth + 1) end
      b.content = items
      out:insert(b)
    elseif t == "BlockQuote" then
      b.content = process_blocks(b.content, depth + 1)
      out:insert(b)
    elseif t == "DefinitionList" then
      local items = {}
      for i, item in ipairs(b.content) do
        local defs = {}
        for k, def in ipairs(item[2]) do defs[k] = process_blocks(def, depth + 1) end
        items[i] = { item[1], defs }
      end
      b.content = items
      out:insert(b)
    elseif t == "Div" then
      b.content = process_blocks(b.content, depth)
      out:insert(b)
    else
      out:insert(b)
    end
  end
  return out
end

local function tables(doc)
  doc.blocks = process_blocks(doc.blocks, 0)
  return doc
end

------------------------------------------------------------------------------------------------
-- Displayed formulas: the tag moves out of the formula, and the TeX macro \suppdisplay
-- (supplement_layout.tex) chooses between an ordinary display, a slightly scaled display and a wrapped display.

-- Break hints.  TeX breaks inline math only at relations, binary operators and explicit penalties, never at the glue
-- of \quad and \qquad.  Two macros of supplement_layout.tex are inserted at the top level of the formula, outside
-- braces, \left...\right groups and environments, which are boxes:
--   \suppsep (penalty zero) before \quad and \qquad, which separate the clauses of a formula;
--   \suppbr (a penalty above those of relations and operators) before a large factor (fraction, sum, integral,
--   \left...\right group), since a product of such factors has no other break point.
local HINT_BEFORE = { sum = true, prod = true, int = true, oint = true, bigcup = true, bigcap = true,
                      frac = true, dfrac = true, tfrac = true, sqrt = true, left = true }
local SEPARATOR = { quad = true, qquad = true }
local BIGOP = { sum = true, prod = true, int = true, oint = true, bigcup = true, bigcap = true }
local function add_hints(text)
  local out = {}
  local i, n = 1, #text
  local brace, lr, env = 0, 0, 0
  local transparent = {}       -- stack of braces belonging to \boxed{...}, whose contents are broken as a paragraph
  local prev = ""              -- previous significant token
  local started = false
  -- state after a big operator: 1 = the operator and its scripts so far, 2 = a script argument is expected.
  -- No break is allowed between the operator and the factor that follows it.
  local opstate = 0
  local function top() return brace == 0 and lr == 0 and env == 0 end
  while i <= n do
    local c = text:sub(i, i)
    if c == "\\" then
      local name = text:match("^\\(%a+)", i)
      if name then
        if top() and started and prev ~= "^" and prev ~= "_" and prev ~= "\\left" and prev ~= "\\right" then
          if HINT_BEFORE[name] and opstate ~= 1 then out[#out + 1] = "\\suppbr{}"
          elseif SEPARATOR[name] then out[#out + 1] = "\\suppsep{}" end
        end
        if top() then
          if BIGOP[name] then opstate = 1
          elseif opstate == 2 then opstate = 1
          else opstate = 0 end
        end
        if name == "begin" then env = env + 1 elseif name == "end" then env = env - 1 end
        if name == "left" then lr = lr + 1 elseif name == "right" then lr = lr - 1 end
        out[#out + 1] = "\\" .. name
        i = i + 1 + #name
        prev = "\\" .. name
        started = true
        if name == "boxed" and text:sub(i, i) == "{" then
          out[#out + 1] = "{"
          i = i + 1
          transparent[#transparent + 1] = brace      -- brace depth at which the boxed group closes
          prev = "{"
          started = false
          opstate = 0
          goto continue
        end
      else
        out[#out + 1] = text:sub(i, i + 1)
        prev = text:sub(i, i + 1)
        i = i + 2
        started = true
        if top() then opstate = (opstate == 2) and 1 or 0 end
      end
    elseif c == "{" then
      if opstate == 2 and top() then opstate = 3 end   -- a braced script argument: back to 1 when it closes
      brace = brace + 1
      out[#out + 1] = c; i = i + 1; prev = "{"
    elseif c == "}" then
      if #transparent > 0 and transparent[#transparent] == brace then
        transparent[#transparent] = nil
      else
        brace = brace - 1
        if brace == 0 and opstate == 3 then opstate = 1 end
      end
      out[#out + 1] = c; i = i + 1; prev = "}"; started = true
    else
      out[#out + 1] = c
      if not c:match("%s") then
        prev = c; started = true
        if top() then
          if (c == "^" or c == "_") and opstate >= 1 then opstate = 2
          elseif opstate == 2 then opstate = 1
          else opstate = 0 end
        end
      end
      i = i + 1
    end
    ::continue::
  end
  return table.concat(out)
end

local function display(el)
  if el.mathtype ~= "DisplayMath" then return nil end
  local body, tag = el.text:match("^(.-)\\tag%s*(%b{})%s*$")
  if body then
    tag = tag:sub(2, -2)
  else
    body, tag = el.text, ""
  end
  return pandoc.RawInline("latex", "\\suppdisplay{" .. add_hints(body) .. "}{" .. tag .. "}")
end

------------------------------------------------------------------------------------------------
-- Inline code and file names longer than half a line get break points after underscores, slashes and dots.

local function code(el)
  local n = utf8.len(el.text) or #el.text
  if n * MONO / 1000 * 10 < 0.5 * textwidth then return nil end
  local latex = pandoc.write(pandoc.Pandoc({ pandoc.Plain({ el }) }), "latex"):gsub("%s+$", "")
  latex = latex:gsub("\\_", "\\_\\allowbreak{}"):gsub("/", "/\\allowbreak{}"):gsub("%.", ".\\allowbreak{}")
  return pandoc.RawInline("latex", latex)
end

local function long_str(el)
  if not el.text:find("[/_]") then return nil end
  if str_w(el.text) / 1000 * 10 < 0.6 * textwidth then return nil end
  local out, rest = {}, el.text
  while #rest > 0 do
    local a, b = rest:find("^[^/_]*[/_]")
    if not a then out[#out + 1] = pandoc.Str(rest); break end
    out[#out + 1] = pandoc.Str(rest:sub(a, b))
    out[#out + 1] = pandoc.RawInline("latex", "\\allowbreak{}")
    rest = rest:sub(b + 1)
  end
  return out
end

return {
  { Meta = read_meta },
  { Pandoc = tables },
  { Math = display, Code = code, Str = long_str },
}
