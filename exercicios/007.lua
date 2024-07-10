--[[
Faça um programa que calcule a área de um quadrado, em seguida
mostre o dobro desta área para o usuário.
]]

io.write("Insira o a medida do lado do quadrado: ")
local l = tonumber(io.read())

local area = (l*l)

local dobro = (area^2)

print(
  string.format("O dobro da área = %.2f, é %.2f.", area, dobro)
)
