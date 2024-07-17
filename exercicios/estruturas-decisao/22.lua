--[[
Faça um Programa que peça um número inteiro e determine se ele é par ou impar.
Dica: utilize o operador módulo (resto da divisão).
]]

io.write("Digite um número inteiro: ")
local n = tonumber(io.read())

print("")

if n % 2 == 0 then
  print("O número é par!")
else
  print("O número é impar!")
end
