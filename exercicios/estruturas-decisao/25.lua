--[[
Faça um programa que faça 5 perguntas para uma pessoa sobre um crime. As perguntas são:

a - "Telefonou para a vítima?"
b - "Esteve no local do crime?"
c - "Mora perto da vítima?"
d - "Devia para a vítima?"
e - "Já trabalhou com a vítima?"

O programa deve no final emitir uma classificação sobre a participação da pessoa no crime. Se a pessoa
responder positivamente a 2 questões ela deve ser classificada como "Suspeita", entre 3 e 4 como "Cúmplice"
e 5 como "Assassino". Caso contrário, ele será classificado como "Inocente".
]]

print("Vou lhe fazer algumas perguntas sobre um caso de crime.")
print("Responda S para sim e N para não.")
print("")

local positivo = 0
local resposta

io.write("Telefonou para a vítima? ")
resposta = io.read()
if resposta == "S" or resposta == "s" then
  positivo = positivo + 1
end

io.write("Esteve no local do crime? ")
resposta = io.read()
if resposta == "S" or resposta == "s" then
  positivo = positivo + 1
end

io.write("Mora perto da vítima? ")
resposta = io.read()
if resposta == "S" or resposta == "s" then
  positivo = positivo + 1
end

io.write("Devia para a vítima? ")
resposta = io.read()
if resposta == "S" or resposta == "s" then
  positivo = positivo + 1
end

io.write("Já trabalhou com a vítima? ")
resposta = io.read()
if resposta == "S" or resposta == "s" then
  positivo = positivo + 1
end

if positivo <= 1 then
  print("Inocente")
elseif positivo == 2 then
  print("Suspeita")
elseif positivo == 3 or positivo == 4 then
  print("Cúmplice")
else
  print("Assassino")
end
