--[[
Faça um programa para uma loja de tintas. O programa deverá
pedir o tamanho em metros quadrados da área a ser pintada.

Considere que a cobertuda da tinta é de 1 litro para cada
3 metros quadrados e que a tinta é vendida em latas de 18 litros,
que custam R$ 80.00.

Informe ao usuáro a quantidade de latas de tinta a serem compradas
e o preço total.
]]

io.write("Coloque o tamanho em metros quadrados da área a ser pintada: ")
local areaM2 = tonumber(io.read())

local litros = areaM2 / 3

local latas = math.ceil(litros / 18)

local dinheiro = latas * 80

print(string.format("A quantidade de latas a ser comprada é %i e o valor total" ..
" é R$ %.2f.", latas, dinheiro))
