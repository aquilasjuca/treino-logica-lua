--[[
Faça um programa que verifique se uma letra digitada é "F" ou "M".
Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido.
]]

io.write("Digite M para Masculino e F para Feminino: ")
local input = io.read()

if input == "F" then
  print("Sexo F - Feminino.")
elseif input == "M" then
  print("Sexo M - Masculino.")
else
  print("Sexo Inválido.")
end

