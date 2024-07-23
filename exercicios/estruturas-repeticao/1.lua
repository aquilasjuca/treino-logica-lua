--[[
Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor seja inválido e
continue pedindo até que o usuário informe um valor válido.
]]

io.write("Digite uma nota entre zero e dez: ")
local nota = tonumber(io.read())

while nota < 0 or nota > 10 do
  io.write("Nota Inválida. Digite uma nota correta: ")
  nota = tonumber(io.read())
end

print("Nota Válida!")
