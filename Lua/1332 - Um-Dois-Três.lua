--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local s = io.read()
  if #s == 3 then
    if s:match '^tw.' or s:match '^t.o' or s:match '^.wo' then
      print(2)
    else
      print(1)
    end
  else
    print(3)
  end
end