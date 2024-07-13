--[[
Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao
longo de um semestre, e calcule a sua média. A atribuição de conceitos obedece à tabela abaixo:

Média de Aproveitamento  Conceito
  Entre 9.0 e 10.0        A
  Entre 7.5 e 9.0         B
  Entre 6.0 e 7.5         C
  Entre 4.0 e 6.0         D
  Entre 4.0 e zero        E

O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem
“APROVADO” se o conceito for A, B ou C ou “REPROVADO” se o conceito for D ou E.
]]

io.write("Digite sua 1° nota: ")
local n1 = tonumber(io.read())

io.write("Digite sua 2° nota: ")
local n2 = tonumber(io.read())

print("")

local calc = (n1 + n2) / 2

if calc < 0 or calc > 10  then
  print("Entradas Erradas")
elseif calc >= 0 and calc < 4 then
  print("Reprovado | Conceito: \"E\".")
elseif calc >= 4 and calc < 6  then
  print("Reprovado | Conceito: \"D\".")
elseif calc >= 6 and calc < 7.5 then
  print("Aprovado | Conceito: \"C\".")
elseif calc >= 7.5 and calc < 9 then
  print("Aprovado | Conceito: \"B\".")
else
  print("Aprovado | Conceito: \"A\".")
end
