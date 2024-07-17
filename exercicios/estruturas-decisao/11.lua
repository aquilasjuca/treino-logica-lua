--[[
As Organizações Tabajara resolveram dar um aumento de salário aos seus
colaboradores e lhe contrataram para desenvolver o programa que calculará os
reajustes.

Faça um programa que recebe o salário de um colaborador e o reajuste segundo o
seguinte critério, baseado no salário atual:

salários até R$ 280,00 (incluindo) : aumento de 20%
salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
salários de R$ 1500,00 em diante : aumento de 5%

Após o aumento ser realizado, informe na tela:
    o salário antes do reajuste;
    o percentual de aumento aplicado;
    o valor do aumento;
    o novo salário, após o aumento.
]]

io.write("Digite o seu salário: ")
local salario = tonumber(io.read())

print("")

if salario <= 0 then
  print("Salário Inválido!")
elseif salario <= 280 then
  local aumento = 0.20 * salario
  local novo_salario = aumento + salario
  print(
    string.format(
      "Salário Atual - R$ %.2f\n" ..
      "Aumento em %% - 20%%\n" ..
      "Aumento - R$ %.2f\n" ..
      "Novo Salário - R$ %.2f", salario, aumento, novo_salario)
  )
elseif salario >= 280 and salario <= 700 then
  local aumento = 0.15 * salario
  local novo_salario = aumento + salario
  print(
    string.format(
      "Salário Atual - R$ %.2f\n" ..
      "Aumento em %% - 15%%\n" ..
      "Aumento - R$ %.2f\n" ..
      "Novo Salário - R$ %.2f", salario, aumento, novo_salario)
  )
elseif salario >= 700 and salario <= 1500 then
  local aumento = 0.10 * salario
  local novo_salario = aumento + salario
  print(
    string.format(
      "Salário Atual - R$ %.2f\n" ..
      "Aumento em %% - 10%%\n" ..
      "Aumento - R$ %.2f\n" ..
      "Novo Salário - R$ %.2f", salario, aumento, novo_salario)
  )
elseif salario >= 1500 then
  local aumento = 0.05 * salario
  local novo_salario = aumento + salario
  print(
    string.format(
      "Salário Atual - R$ %.2f\n" ..
      "Aumento em %% - 05%%\n" ..
      "Aumento - R$ %.2f\n" ..
      "Novo Salário - R$ %.2f", salario, aumento, novo_salario)
  )
end

