--[[
Faça um programa que peça dois números e imprima a soma.
--]]

io.write("Digite um número: ")

local number1 = tonumber(io.read())

io.write("Digite um segundo número: ")

local number2 = tonumber(io.read())

local result = number1 + number2

print(string.format("A soma entre %d e %d é %d.", number1, number2, result))

