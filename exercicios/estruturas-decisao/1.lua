--[[
Faça um programa que peça dois números e imprima o maior deles.
]]

io.write("Digite um número: ")
local n1 = tonumber(io.read())

io.write("Digite outro número: ")
local n2 = tonumber(io.read())

if n1 > n2 then
  print("O número maior é, " .. n1 .. ".")
elseif n1 < n2 then
  print("O número maior é, " .. n2 .. ".")
else
  print("Você digitou o mesmo número, " .. n1 .. ".")
end
