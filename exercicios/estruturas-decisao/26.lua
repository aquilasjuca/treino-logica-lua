--[[
Um posto está vendendo combustíveis com a seguinte tabela de descontos:
Álcool:
  até 20 litros, desconto de 3% por litro
  acima de 20 litros, desconto de 5% por litro

Gasolina:
  até 20 litros, desconto de 4% por litro
  acima de 20 litros, desconto de 6% por litro

Escreva um algoritmo que leia o número de litros vendidos, o tipo de combustível
(codificado da seguinte forma: A-álcool, G-gasolina)

Calcule e imprima o valor a ser pago pelo cliente sabendo-se que o preço do litro da
gasolina é R$ 2,50 o preço do litro do álcool é R$ 1,90.
]]

print("---Informações---")
print("A - álcool (1L - R$ 1.90) e G - gasolina (1L - R$ 2.50): ")
print("")
io.write("Digite a quantidade de litros que queira abastecer: ")
local l = tonumber(io.read())
io.write("Digite o tipo de combustível que você queira abastecer: ")
local c = io.read()

print("")

local valor, novo_valor

if c == "A" or c == "a" then
	if l <= 20 then
	  valor = l * 1.90
    novo_valor = valor - (valor * 0.03)
    print(string.format("Valor a ser pago, R$ %.2f.", novo_valor))
  else
    valor = l * 1.90
    novo_valor = valor - (valor * 0.05)
    print(string.format("Valor a ser pago, R$ %.2f.", novo_valor))
  end
elseif c == "G" or c == "g" then
  if l <= 20 then
	  valor = l * 2.50
    novo_valor = valor - (valor * 0.04)
    print(string.format("Valor a ser pago, R$ %.2f.", novo_valor))
  else
    valor = l * 2.50
    novo_valor = valor - (valor * 0.06)
    print(string.format("Valor a ser pago, R$ %.2f.", novo_valor))
  end
end
