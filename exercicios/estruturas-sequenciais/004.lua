--[[
Faça um programa que peça 4 notas bimestrais e mostre a média.
--]]

io.write("Digite a 1° nota: ")
local nota1 = tonumber(io.read())

io.write("Digite a 2° nota: ")
local nota2 = tonumber(io.read())

io.write("Digite a 3° nota: ")
local nota3 = tonumber(io.read())

io.write("Digite a 4° nota: ")
local nota4 = tonumber(io.read())

local calc = (nota1 + nota2 + nota3 + nota4) / 4

print(string.format("A sua média nesse ano foi %.2f.", calc))
