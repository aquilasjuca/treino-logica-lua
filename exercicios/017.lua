--[[
Faça um programa para uma loja de tintas.

O programa deverá pedir o tamanho em metros quadrados da área
a ser pintada.

Considere que a cobertura da tinta é de 1 litro para cada 6 metros
quadrados e que a tinta é vendida em latas de 18 litros, que custam R$ 80.00
ou em galões de 3.6 litros, que custam R$ 25.00.

Informe ao usuário as quantidades de tinta a serem compradas e os respectivos
preços em 3 situações:

comprar apenas latas de 18 litros;
comprar apenas galões de 3,6 litros;
misturar latas e galões, de forma que o preço seja o menor.
    Acrescente 10% de folga e sempre arredonde os valores para cima,
    isto é, considere latas cheias.
]]

io.write("Coloque o tamanho em metros quadrados da área a ser pintada: ")
local area = tonumber(io.read())

local litros = area / 6 * 1.1

local latas = math.ceil(litros / 18)

local valorL = latas * 80

local galoes = math.ceil(litros / 3.6)

local valorG = galoes * 25

local lataoMistura = math.floor(litros / 18)

local valorLataoMistura = lataoMistura * 80

local listroRestante = (litros - (lataoMistura * 18))

local galaoMistura = math.ceil(listroRestante / 3.6)

local valorGalaoMistura = galaoMistura * 25

local valorMisturas = valorLataoMistura + valorGalaoMistura

print("")
print(string.format("1° Opção - A quantidade de latas a ser comprada é %i e o valor total é R$ %.2f.", latas, valorL))
print(string.format("2° Opção -  A quantidade de galões a ser comprada é %i e o valor total é R$ %.2f.", galoes, valorG))
print(string.format("3° Opção - A quantidade de latas a ser comprada é %i, de galões é %i e o valor" ..
" total deu R$ %.2f.", lataoMistura, galaoMistura, valorMisturas))

