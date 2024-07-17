--[[
Faça um progrma que peça 2 números inteiros e um
número real. Calcule e mostre: o produto do dobro
do primeiro com metade do segundo, a soma do triplo
do primeiro com o terceiro e o terceiro elevao ao cubo.
]]

io.write("Digite um número inteiro: ")
local num1 = tonumber(io.read())

io.write("Digite mais um número inteiro: ")
local num2 = tonumber(io.read())

io.write("Digite um número real: ")
local real = tonumber(io.read())

local calc1 = (num1^2) * (num2/2)
local calc2 = (num1^3) + (real)
local calc3 = (real^3)

print("")
print("O produto do dobro do primeiro com metade do segundo: " .. calc1)
print("A soma do triplo do primeiro com o terceiro: " .. calc2)
print("O terceiro elevado ao cubo: " .. calc3)
