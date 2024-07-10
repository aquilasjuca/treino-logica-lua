--[[
Faça um prograama que converta o raio de um círculo,
calcule e mostre sua área.
]]

io.write("Insira o valor do raio de um círculo: ")
local r = tonumber(io.read())

local area = math.pi * (r^2)

print(string.format("A área do círculo é %.2f.", area))
