-- Characters missing from Latin Modern Roman and Latin Modern Mono, in running text and in code.
-- Math is left alone: unicode-math with Latin Modern Math has them.
local serif = {}
for _, c in ipairs{'∘','∧','∫','≈','≡','⊂','⊃','⊠','⊥','γ','ε','θ','ι','ν','φ','χ','ψ'} do serif[c] = true end
local mathfont = {['𝟙']=true, ['𝒜']=true, ['𝒱']=true, ['≅']=true, ['ℓ']=true}
local code = {['∧']='^', ['⊥']='perp', ['𝒜']='A', ['𝒱']='V', ['𝟙']='1', ['∘']='o', ['∫']='int', ['⊂']='<', ['⊃']='>',
              ['θ']='theta', ['ν']='nu', ['ε']='eps', ['γ']='gamma', ['φ']='phi', ['χ']='chi', ['ψ']='psi', ['ι']='iota',
              ['≅']='~=', ['≈']='~', ['≡']='==', ['ℓ']='l', ['⊠']='[x]'}

local function pieces(s)
  local out, buf = {}, {}
  local function flush()
    if #buf > 0 then out[#out + 1] = pandoc.Str(table.concat(buf)); buf = {} end
  end
  for _, cp in utf8.codes(s) do
    local c = utf8.char(cp)
    if serif[c] then flush(); out[#out + 1] = pandoc.RawInline('latex', '{\\fallback ' .. c .. '}')
    elseif mathfont[c] then flush(); out[#out + 1] = pandoc.RawInline('latex', '{\\fallbackmath ' .. c .. '}')
    else buf[#buf + 1] = c end
  end
  flush()
  return out
end

local function hasany(s)
  for _, cp in utf8.codes(s) do
    local c = utf8.char(cp)
    if serif[c] or mathfont[c] then return true end
  end
  return false
end

local function plain(s)
  local t = {}
  for _, cp in utf8.codes(s) do
    local c = utf8.char(cp)
    t[#t + 1] = code[c] or c
  end
  return table.concat(t)
end

return {{
  Str = function(el) if hasany(el.text) then return pieces(el.text) end end,
  Code = function(el) el.text = plain(el.text); return el end,
  CodeBlock = function(el) el.text = plain(el.text); return el end,
}}
