--[[
Tendo como dado de entrada a altura (h) de uma pessoa, costrua uma algoritmo
que calcule seu peso ideal, utilizando as seguintes fórmulas: Para homens:
(72.7*h) - 58, e para mulheres: (62.1*h) - 44.7
]]

io.write("Coloque sua altura em cm: ")
local h = tonumber(io.read())

local pH = (72.7*h) - 58
local pM = (62.1*h) - 44.7

print("")
print(string.format("Se você for homem, seu peso ideal é %.2fkg,\
mas se você for mulher, seu peso ideal é %.2fkg.", pH, pM))
