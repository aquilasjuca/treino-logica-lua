--[[
O Hipermercado Tabajara está com uma promoção de carnes que é imperdível. Confira:

                   Até 5 Kg             Acima de 5 Kg
File Duplo      R$ 4,90 por Kg          R$ 5,80 por Kg
Alcatra         R$ 5,90 por Kg          R$ 6,80 por Kg
Picanha         R$ 6,90 por Kg          R$ 7,80 por Kg

Para atender a todos os clientes, cada cliente poderá levar apenas um dos tipos de carne da promoção,
porém não há limites para a quantidade de carne por cliente. Se compra for feita no cartão Tabajara
o cliente receberá ainda um desconto de 5% sobre o total da compra.

Escreva um programa que peça o tipo e a quantidade de carne comprada pelo usuário e gere um cupom fiscal,
contendo as informações da compra: tipo e quantidade de carne, preço total, tipo de pagamento, valor do
desconto e valor a pagar.
]]

print("Escolha o tipo da carne para a compra.")
io.write("F - Filé Duplo, A - Alcatra ou P - Picanha: ")
local carne = io.read()

print("")

io.write("Escolha a quantidade em kg: ")
local quantidade = tonumber(io.read())

print("")

io.write("Quer pagar utilizando o cartão Tabajara ou dinheiro?\nC - Cartão ou D - Dinheiro: ")
local pagamento = io.read()

print("")

local valor, valor_desconto, nome_carne

if carne == "F" or carne == "f" then
	nome_carne = "Filé Duplo"
	if quantidade <= 5 then
		valor = quantidade * 4.90
	else
		valor = quantidade * 5.80
	end
elseif carne == "A" or carne == "a" then
	nome_carne = "Alcatra"
	if quantidade <= 5 then
		valor = quantidade * 5.90
	else
		valor = quantidade * 6.80
	end
elseif carne == "P" or carne == "p" then
	nome_carne = "Picanha"
	if quantidade <= 5 then
		valor = quantidade * 6.90
	else
		valor = quantidade * 7.80
	end
else
	print("Tipo de carne inválido!")
	return
end

if pagamento == "D" or pagamento == "d" then
	print(
		string.format(
			"---Cupom Fiscal---\n"
				.. "Carne - %s\n"
				.. "Quantidade em Kg - %.1f\n"
				.. "Preço Total - R$ %.2f\n"
				.. "Tipo de Pagamento - Dinheiro\n"
				.. "Valor do Desconto - R$ 0.00\n"
				.. "Valor Total com Desconto - R$ %.2f",
			nome_carne,
			quantidade,
			valor,
			valor
		)
	)
elseif pagamento == "C" or pagamento == "c" then
	valor_desconto = valor - (valor * 0.05)
	print(
		string.format(
			"---Cupom Fiscal---\n"
				.. "Carne - %s\n"
				.. "Quantidade em Kg - %.1f\n"
				.. "Preço Total - R$ %.2f\n"
				.. "Tipo de Pagamento - Cartão\n"
				.. "Valor do Desconto - R$ %.2f\n"
				.. "Valor Total com Desconto - R$ %.2f",
			nome_carne,
			quantidade,
			valor,
			valor * 0.05,
			valor_desconto
		)
	)
else
	print("Tipo de pagamento inválido!")
end
