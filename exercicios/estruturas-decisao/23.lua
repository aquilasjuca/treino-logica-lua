--[[
Faça um Programa que peça um número e informe se o número é inteiro ou decimal.
Dica: utilize uma função de arredondamento.
]]

io.write("Digite qualquer número: ")
local n = tonumber(io.read())

local int, frac

print("")

if not n then
  print("Entrada Inválida!")
else
  int, frac = math.modf(n)
end

if frac == 0 then
  print("O número é inteiro!")
elseif int then
  print("O número é decimal!")
end
