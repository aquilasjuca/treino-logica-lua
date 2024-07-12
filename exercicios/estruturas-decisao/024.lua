--[[
Faça um programa que leia três números e mostre o maior deles.
]]

io.write("Digite o 1° número: ")
local n1 = tonumber(io.read())

io.write("Digite o 2° número: ")
local n2 = tonumber(io.read())

io.write("Digite o 3° número: ")
local n3 = tonumber(io.read())

print("")

if n1 >= n2 and n1 >= n3 then
  print("O maior número é " .. n1 .. ".")
elseif n2 >= n1 and n2 >= n3 then
  print("O maior número é " .. n2 .. ".")
else
  print("O maior número é " .. n3 .. ".")
end

