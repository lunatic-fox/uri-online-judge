--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local a = {}
local function s(x)
  local t = {}
  for i in x:gmatch '.' do table.insert(t, i) end
  return t
end
for _ = 1, io.read(), 1 do
  local input, s1 = io.read(), ''
  for _, e in ipairs(s(input)) do
    if string.match(e, '%a') then
      s1 = s1 .. string.char(utf8.codepoint(e) + 3)
    else
      s1 = s1 .. e
    end
  end
  local s2, s3 = s(string.reverse(s1)), ''
  local m = #s2 / 2
  local function r(n)
    for i = m + n, #s2, 1 do
      s3 = s3 .. string.char(utf8.codepoint(s2[i]) - 1)
    end
  end
  for i = 1, m, 1 do s3 = s3 .. s2[i] end
  if #s2 % 2 == 0 then r(1) else r(0.5) end
  table.insert(a, s3)
end
print(table.concat(a, '\n'))