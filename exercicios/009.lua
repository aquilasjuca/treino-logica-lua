--[[
Faça um programa que peça a temperatura em graus Farenheit,
transforme e mostre a temperatura em graus Celsius. Fórmula:
C = (5 * (F - 32) / 9)
]]

io.write("Insira uma temperatura em Farenheit: ")
local f = tonumber(io.read())

local c = (5 * (f - 32) / 9)

print(string.format("A temperatura em Celsius é %.1f°C.", c))
