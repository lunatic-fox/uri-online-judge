--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local t, u = {}, {}
for _ = 1, 3 do table.insert(t, io.read 'n') end
u = table.concat(t, '\n')
table.sort(t, function(a, b) return a < b end)
print(table.concat(t, '\n') .. '\n')
print(u)