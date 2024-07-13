--[[
Faça um Programa que leia um número e exiba o dia correspondente da semana. (1-Domingo, 2- Segunda, etc.),
se digitar outro valor deve aparecer valor inválido.
]]

print("Digite um número correspondente ao dia da semana. Ex: 1-Domingo, 2- Segunda, etc.")
local number = tonumber(io.read())

print("")

if number <= 0 or number > 7 then
  print("Valor Inválido")
elseif number == 1 then
  print("Domingo")
elseif number == 2 then
  print("Segunda")
elseif number == 3 then
  print("Terça")
elseif number == 4 then
  print("Quarta")
elseif number == 5 then
  print("Quinta")
elseif number == 6 then
  print("Sexta")
else
  print("Sábado")
end
