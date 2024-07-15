--[[
Faça um programa que calcule as raízes de uma equação do segundo grau, na forma ax2 + bx + c.

O programa deverá pedir os valores de a, b e c e fazer as consistências, informando ao usuário
nas seguintes situações:

  1° - Se o usuário informar o valor de A igual a zero, a equação não é do segundo grau e o programa
não deve fazer pedir os demais valores, sendo encerrado;
  2° - Se o delta calculado for negativo, a equação não possui raizes reais. Informe ao usuário e encerre
o programa;
  3° - Se o delta calculado for igual a zero a equação possui apenas uma raiz real; informe-a ao usuário;
  4° - Se o delta for positivo, a equação possui duas raiz reais; informe-as ao usuário;
]]
print("Equação do 2° grau")

print("")

io.write("Digite o valor de \"a\": ")
local a = tonumber(io.read())

local b, c

if a <= 0 then
  print("")
  print("A equação não é do segundo grau.")
  return
else
  io.write("Digite o valor de \"b\": ")
  b = tonumber(io.read())

  io.write("Digite o valor de \"c\": ")
  c = tonumber(io.read())
end

print("")

local delta = (b ^ 2) - (4 * a * c)

local x1 = (-b + math.sqrt(delta)) / (2 * a)

local x2 = (-b - math.sqrt(delta)) / (2 * a)

if delta < 0 then
  print("A equação não possui raizes reais.")
elseif delta == 0 then
  print("A equação possui apenas uma raiz real\n")
  print(string.format("x1 = %.2f.", x1))
else
  print("A equação possui duas raizes reais\n")
  print(string.format("x1 = %.2f e x2 = %.2f", x1, x2))
end

