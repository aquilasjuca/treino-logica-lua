--[[
Uma fruteira está vendendo frutas com a seguinte tabela de preços:

                   Até 5 Kg             Acima de 5 Kg
Morango         R$ 2,50 por Kg          R$ 2,20 por Kg
Maçã            R$ 1,80 por Kg          R$ 1,50 por Kg

Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra ultrapassar R$ 25,00,
receberá ainda um desconto de 10% sobre este total.

Escreva um algoritmo para ler a quantidade (em Kg) de morangos e a quantidade (em Kg) de maças
adquiridas e escreva o valor a ser pago pelo cliente.
]]

io.write("Digite a quantidade em Kg de morangos: ")
local morangos = tonumber(io.read())

io.write("Digite a quantidade em Kg de maças: ")
local macas = tonumber(io.read())

print("")

local valor_morangos, valor_macas, valor_total

if morangos <= 5 then
  valor_morangos = morangos * 2.50
else
  valor_morangos = morangos * 2.20
end

if macas <= 5 then
  valor_macas = macas * 1.80
else
  valor_macas = macas * 1.50
end

valor_total = valor_morangos + valor_macas

if (morangos + macas) > 8 or valor_total > 25 then
  valor_total = valor_total - (valor_total * 0.1)
end

print(string.format("Total a ser pago é R$ %.2f.", valor_total))
