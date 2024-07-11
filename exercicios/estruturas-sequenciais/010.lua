--[[
Faça um programa que peça a temperatura em Celsius,
tranforme e mostre em graus Farenheit.
]]

io.write("Insira uma temperatura em Celsius: ")
local c = tonumber(io.read())

local f = (c * 1.8) + 32

print(string.format("A temperatura em Celsius é %.1f°F.", f))


