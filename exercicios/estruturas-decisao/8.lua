--[[
Faça um programa que pergunte o preço de três produtos e informe qual
produto você deve comprar, sabendo que a decisão é sempre pelo mais barato.
]]

io.write("Digite o preço do 1° produto: ")
local p1 = tonumber(io.read())

io.write("Digite o preço do 2° produto: ")
local p2 = tonumber(io.read())

io.write("Digite o preço do 3° produto: ")
local p3 = tonumber(io.read())

print("")

if p1 == p2 and p2 == p3 then
	print("Todos os produtos têm o mesmo valor.")
	return
end

if p1 == p2 and p1 < p3 then
	print("O produto 1 e o produto 2 são os mais baratos.")
	return
elseif p1 == p3 and p1 < p2 then
	print("O produto 1 e o produto 3 são os mais baratos.")
	return
elseif p2 == p3 and p2 < p1 then
	print("O produto 2 e o produto 3 são os mais baratos.")
	return
end

if p1 <= p2 and p1 <= p3 then
	print("Compre o produto 1, pois ele é o mais barato.")
	return
elseif p2 <= p1 and p2 <= p3 then
	print("Compre o produto 2, pois ele é o mais barato.")
	return
else
	print("Compre o produto 3, pois ele é o mais barato.")
	return
end
