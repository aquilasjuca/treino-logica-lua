--[[
Faça um Programa para um caixa eletrônico. O programa deverá perguntar ao usuário o valor do
saque e depois informar quantas notas de cada valor serão fornecidas. As notas disponíveis serão
as de 1, 5, 10, 50 e 100 reais. O valor mínimo é de 10 reais e o máximo de 600 reais. O programa
não deve se preocupar com a quantidade de notas existentes na máquina.

Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece duas notas de 100, uma nota de 50,
uma nota de 5 e uma nota de 1;

Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece três notas de 100, uma nota de 50,
quatro notas de 10, uma nota de 5 e quatro notas de 1.
]]

io.write("Digite o valor do saque: ")
local saque = tonumber(io.read())

local resto, cem, cinquenta, dez, cinco, um

print("")

if saque < 10 or saque > 600 then
  print("Não podemos sacar esse valor!")
else
  cem = math.floor(saque / 100)
  resto = saque % 100
  cinquenta = math.floor(resto / 50)
  resto = saque % 50
  dez = math.floor(resto / 10)
  resto = saque % 10
  cinco = math.floor(resto / 5)
  resto = saque % 5
  um = resto

  if cem > 0 then
    print(string.format("%i nota(s) de 100.", cem))
  end

  if cinquenta > 0 then
    print(string.format("%i nota(s) de 50.", cinquenta))
  end

  if dez > 0 then
    print(string.format("%i nota(s) de dez.", dez))
  end

  if cinco > 0 then
    print(string.format("%i nota(s) de cinco.", cinco))
  end

  if um > 0 then
    print(string.format("%i nota(s) de um.", um))
  end
end
