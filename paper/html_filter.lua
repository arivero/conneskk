local equation_numbers = {}
local equation_count = 0
local lecture_figure_count = 0

local function format_lecture_figure(figure)
  local caption = pandoc.utils.stringify(figure.caption.long)
  local lecture_figure = false
  figure = figure:walk({
    Image = function(img)
      local svg, count = img.src:gsub("^(plots/lecture%-[%w%-]+)%.pdf$", "%1.svg")
      if count == 1 then
        lecture_figure = true
        img.src = svg
        if #img.caption == 0 then
          img.caption = {pandoc.Str(caption)}
        end
        img.attributes.width = nil
        return img
      end
    end,
  })
  if lecture_figure then
    lecture_figure_count = lecture_figure_count + 1
    local first = figure.caption.long[1]
    first.content:insert(1, pandoc.Space())
    first.content:insert(1, pandoc.Strong({pandoc.Str("Figure " .. lecture_figure_count .. ".")}))
    return figure
  end
end

local function normalize_math(math)
  math.text = math.text:gsub("\\rm%s+([%a]+)", "\\mathrm{%1}")
  math.text = math.text:gsub("\\Bigl", "\\bigl")
  math.text = math.text:gsub("\\Bigr", "\\bigr")

  if math.mathtype ~= "DisplayMath" then
    return math
  end

  equation_count = equation_count + 1
  local label = math.text:match("\\label%s*{([^}]+)}")
  local id = ""
  if label then
    assert(label:match("^[%w_:%.%-]+$"), "Invalid equation label: " .. label)
    assert(not equation_numbers[label], "Duplicate equation label: " .. label)
    equation_numbers[label] = equation_count
    id = ' id="' .. label .. '"'
    math.text = math.text:gsub("\\label%s*{[^}]+}%s*", "")
  end

  return {
    pandoc.RawInline("html", '<span class="equation"' .. id .. ">"),
    math,
    pandoc.RawInline(
      "html",
      '<span class="equation-number" aria-label="Equation ' .. equation_count
        .. '">(' .. equation_count .. ")</span></span>"
    ),
  }
end

function Pandoc(document)
  document = document:walk({
    Math = normalize_math,
    Figure = format_lecture_figure,
    Header = function(header)
      -- Match article's default secnumdepth, leaving paragraph headings unnumbered.
      if header.level > 3 then
        header.classes:insert("unnumbered")
        return header
      end
    end,
  })
  return document:walk({
    Link = function(link)
      local label = link.target:match("^#(.+)$")
      if label and equation_numbers[label] then
        link.content = {pandoc.Str("(" .. equation_numbers[label] .. ")")}
        return link
      end
    end,
  })
end
