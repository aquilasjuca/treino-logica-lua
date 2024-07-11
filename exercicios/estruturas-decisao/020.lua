--[[
Faça um programa que peça um valor e mostre na tela se o valor é posivo ou negativo.
]]

io.write("Digite um numero: ")
local n = tonumber(io.read())

if n < 0 then
  print("O número " .. n .. ", é negativo.")
elseif n > 0 then
  print("O número " .. n .. ", é positivo.")
else
  print("O número " .. n .. ", é neutro.")
end
