--[[
Faça um Programa para leitura de três notas parciais de um aluno. O programa deve calcular a
média alcançada por aluno e presentar:
  a - A mensagem "Aprovado", se a média for maior ou igual a 7, com a respectiva média alcançada;
  b - A mensagem "Reprovado", se a média for menor do que 7, com a respectiva média alcançada;
  c - A mensagem "Aprovado com Distinção", se a média for igual a 10.
]]

io.write("Digite a 1° nota: ")
local n1 = tonumber(io.read())

io.write("Digite a 2° nota: ")
local n2 = tonumber(io.read())

io.write("Digite a 3° nota: ")
local n3 = tonumber(io.read())

local media = (n1 + n2 + n3) / 3

if media == 10 then
	print(string.format("Aprovado com Distinção, média %.2f.", media))
elseif media >= 7 then
	print(string.format("Aprovado com média %.2f.", media))
else
	print(string.format("Reprovado com média %.2f.", media))
end

