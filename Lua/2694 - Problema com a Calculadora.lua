--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local n, r = { io.read():gsub('[A-Za-z]', ' '):match '^%s*(%d+)%s+(%d+)%s+(%d+)' }, 0
  for i = 1, #n do r = r + tonumber(n[i]) end
  print(r)
end