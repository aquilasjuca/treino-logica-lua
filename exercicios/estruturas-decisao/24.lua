--[[
Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual operação ele deseja
realizar. O resultado da operação deve ser acompanhado de uma frase que diga se o número é:
a - par ou ímpar;
b - positivo ou negativo;
c - inteiro ou decimal.
]]

io.write("Digite o 1° número: ")
local n1 = tonumber(io.read())

io.write("Digite o 2° número: ")
local n2 = tonumber(io.read())

if not n1 or not n2 then
  print("Você não digitou números!")
  return
end

local resposta

print("")

io.write("Qual operação você quer realizar?\n" .. "Escolhas - '+', '-', '*' ou '/': ")
local escolha = io.read()

print("")

if escolha ~= "+" and escolha ~= "-" and escolha ~= "*" and escolha ~= "/" then
  print("Escolha Errada!")
  return
elseif escolha == "+" then
  resposta = n1 + n2
  print("Resultado = " .. resposta)
  print("")
elseif escolha == "-" then
  resposta = n1 - n2
  print("Resultado = " .. resposta)
  print("")
elseif escolha == "*" then
  resposta = n1 * n2
  print("Resultado = " .. resposta)
  print("")
elseif escolha == "/" then
  resposta = n1 / n2
  print("Resultado = " .. resposta)
  print("")
end

local _, frac = math.modf(resposta)

if resposta % 2 == 0 then
  print("a - Par")
  print("")
else
  print("a - Impar")
  print("")
end

if resposta >= 0 then
  print("b - Positivo")
  print("")
else
  print("b - Negativo")
  print("")
end

if frac == 0 then
  print("c - Inteiro")
else
  print("c - Decimal")
end
