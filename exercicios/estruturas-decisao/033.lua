--[[
Faça um Programa que peça os 3 lados de um triângulo. O programa deverá informar se os valores
podem ser um triângulo. Indique, caso os lados formem um triângulo, se o mesmo é: equilátero,
isósceles ou escaleno.

Dicas:
  Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
  Triângulo Equilátero: três lados iguais;
  Triângulo Isósceles: quaisquer dois lados iguais;
  Triângulo Escaleno: três lados diferentes;
]]

io.write("Digite um lado do triângulo: ")
local l1 = tonumber(io.read())

io.write("Digite um lado do triângulo: ")
local l2 = tonumber(io.read())

io.write("Digite um lado do triângulo: ")
local l3 = tonumber(io.read())

print("")

if ((l1 + l2) > l3) and ((l1 + l3) > l2) and ((l2 + l3) > l1) then
  if l1 == l2 and l1 == l3 then
    print("É um triângulo equilátero!")
  elseif l1 == l2 or l1 == l3 or l2 == l3 then
    print("É um triângulo isósceles!")
  else
    print("É um triângulo escaleno!")
  end
else
  print("De acordo com suas entradas, a figura não é um triângulo!")
end

