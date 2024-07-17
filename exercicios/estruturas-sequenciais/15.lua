--[[
Faça um programa que pergunte quanto você ganha por hora e o número
de horas trabalhadas no mês.

Calcule e mostre o total do seu salário no referido mês, sabendo-se que são
descontados 11% para o Imposto de Renda, 8% para o INSS e 5% para o sindicato,
faça um programa que nos dê: salário bruto, quanto pagou ao INSS, quanto pagou ao
sindicato e o salário líquido.

Calculoe os descontos e o salário líquido, conforme a tabela abaixo:

+ Salário Bruto : R$ __
- IR (11%) : R$ __
- INSS (8%) : R$ __
- Sindicato (5%) : R$ __
- Salário Líquido : R$ __
]]

io.write("Quanto você ganha por hora? ")
local salario = tonumber(io.read())

io.write("Quantas horas você trabalha no mês? ")
local horas = tonumber(io.read())

local salarioB = salario * horas

local ir = salarioB * 0.11

local inss = salarioB * 0.08

local sind = salarioB * 0.05

local salarioL = (salarioB - ir - inss - sind)

print(
  string.format("+ Salário Bruto : R$ %.2f\n- IR (11%%) : R$ %.2f\n" ..
  "- INSS (8%%) : R$ %.2f\n- Sindicato (5%%) : R$ %.2f\n" ..
  "- Salário Líquido : R$ %.2f", salarioB, ir, inss, sind, salarioL)
)


