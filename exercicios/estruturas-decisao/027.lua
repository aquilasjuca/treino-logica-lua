--[[
Faça um programa que leia três números e mostre-os em ordem decrescente.
]]

io.write("Digite um número: ")
local n1 = tonumber(io.read())

io.write("Digite um número: ")
local n2 = tonumber(io.read())

io.write("Digite um número: ")
local n3 = tonumber(io.read())

print("")

if n1 >= n2 and n1 >= n3 then
  if n2 >= n3 then
    print(n1 .. " " .. n2 .. " " .. n3)
  else
    print(n1 .. " " .. n3 .. " " .. n2)
  end
elseif n2 >= n1 and n2 >= n3 then
  if n1 >= n3 then
    print(n2 .. " " .. n1 .. " " .. n3)
  else
    print(n2 .. " " .. n3 .. " " .. n1)
  end
elseif n3 >= n1 and n3 >= n2 then
  if n2 >= n1 then
    print(n3 .. " " .. n2 .. " " .. n1)
  else
    print(n3 .. " " .. n1 .. " " .. n2)
  end
end

