--[[
Faça um programa que verifique se uma letra digitada é vogal ou consoante.
]]

io.write("Digite uma letra: ")
local l = io.read()

if (l == "a" or l == "e" or l == "i" or l == "o" or l == "u") then
  print("A letra digitada é uma vogal!")
else
  print("A letra digitada é uma consoante!")
end
