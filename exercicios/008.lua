--[[
Faça um programa que pergunta quanto você ganha por hora
e o número de horas trabalhadas no mês. Calcule e mostre
o total do seu salário no referido mês.
]]

io.write("Quanto você ganha por hora? ")
local salario = tonumber(io.read())

io.write("Quantas horas você trabalha no mês? ")
local horas = tonumber(io.read())

local calc = salario * horas

print(string.format("O seu salário no mês é %.2f.", calc))
