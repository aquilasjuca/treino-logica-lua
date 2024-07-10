--[[
Tendo como dado de entrada a altura de uma pessoa, construa um algoritmo
que calcule seu peso ideal, usando a seguinte fórmula: (72.7*altura) - 58.
]]

io.write("Coloque sua altura em cm: ")
local altura = tonumber(io.read())

local calc = (72.7 * altura) - 58

print(string.format("Seu peso ideal é %.2fkg.", calc))
