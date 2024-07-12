--[[
Faça um programa que pergunte em que turno você estuda. Peça para digitar
M - Matutino ou V - Vespertino ou N - Noturno,

Imprima a mensagem "Bom dia!", "Boa tarde!" ou "Boa noite!" ou "Valor Inválido!",
conforme o caso.
]]

io.write("Em que turno você estuda?\nDigite M para Matutino, V para Vespertino " ..
"ou N para Noturno: ")
local input = io.read()

print("")

if input == "M" or input == "m" then
  print("Bom dia!")
elseif input == "V" or input == "v" then
  print("Boa tarde!")
elseif input == "N" or input == "n" then
  print("Boa noite!")
else
  print("Valor Inválido")
end

