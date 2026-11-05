local equation_numbers = {}
local equation_count = 0

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
  document = document:walk({Math = normalize_math})
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
