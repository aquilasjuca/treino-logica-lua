--[[
João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o
rendimento diário de seu trabalho.

Toda vez que ele traz um peso de peixes maior que o estabelecido pelo regulamento de
pesca do estado de São Paulo (50 quilos) deve pagar uma multa de R$ 4.00 por quilo
excedente.

João precisa que você faça um programa que leia a variável peso (peso de peixes) e
calcule o excesso.

Gravar na variável excesso a quantidade de quilos além do limite e na variável multa
o valor da multa que João deverá pagar. Imprima os dados do programa com as mensagens
adequadas.
]]

io.write("Quanto que deu o peso dos peixes? ")
local peso = tonumber(io.read())

local excesso = peso - 50
local multa = excesso * 4

print(string.format("O valor do seu excesso foi %.2fkg, e você deverá\
pagar R$ %.2f de multa.", excesso, multa))
