--[[
Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve
calcular a média alcançada por aluno e apresentar: A mensagem "Aprovado", se a média
alcançada for maior ou igual a sete; A mensagem "Reprovado", se a média for menor do
que sete; A mensagem "Aprovado com Distinção", se a média for igual a dez.
]]

io.write("Digite sua primeira nota: ")
local n1 = tonumber(io.read())

io.write("Digite sua segunda nota: ")
local n2 = tonumber(io.read())

local calc = (n1 + n2) / 2

print("")

if calc == 10 then
  print(string.format("Aprovado com Distinção, nota %.2f", calc))
elseif calc >= 7 then
  print(string.format("Aprovado com %.2f", calc))
else
  print(string.format("Reprovado com %.2f", calc))
end

