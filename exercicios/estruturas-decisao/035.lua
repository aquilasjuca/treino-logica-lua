--[[
Faça um Programa que peça um número correspondente a um determinado ano e em seguida informe 
se este ano é ou não bissexto.
]]

io.write("Me informe um ano qualquer: ")
local ano = tonumber(io.read())

print("")

if ano % 4 == 0 then
  if ano % 100 == 0 then
    if ano % 400 == 0 then
      print("O ano é bissexto!")
    else
      print("O ano não é bissexto!")
    end
  else
    print("O ano não é bissexto!")
  end
else
  print("O ano não é bissexto!")
end
