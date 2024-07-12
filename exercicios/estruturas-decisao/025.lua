--[[
Faça um programa que leia três números e mostre
o maior e o menor deles.
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
  if n2 <= n1 and n2 <= n3 then
    print("O menor número é " .. n2 .. ".")
  elseif n3 <= n1 and n3 <= n2 then
    print("O menor número é " .. n3 .. ".")
  end
elseif n2 >= n1 and n2 >= n3 then
  print("O maior número é " .. n2 .. ".")
  if n1 <= n2 and n1 <= n3 then
    print("O menor número é " .. n1 .. ".")
  elseif n3 <= n1 and n3 <= n2 then
    print("O menor número é " .. n3 .. ".")
  end
else
  print("O maior número é " .. n3 .. ".")
  if n2 <= n1 and n2 <= n3 then
    print("O menor número é " .. n2 .. ".")
  elseif n1 <= n2 and n1 <= n3 then
    print("O menor número é " .. n1 .. ".")
  end
end

--[[
Se quiser, pode fazer assim também no lugar das estruturas de decisão, mas o 
intuito do exemplo, é usar as estruturas de decisão.
]]

--[[
local maior = math.max(n1, n2, n3)
local menor = math.min(n1, n2, n3)

print("")
print("O maior número é " .. maior .. ".")
print("O menor número é " .. menor .. ".")
]]
