--[[
Faça um programa para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de
Renda, que depende do salário bruto (conforme tabela abaixo) e 10% para o INSS e que o FGTS corresponde a
11% do Salário Bruto, mas não é descontado (é a empresa que deposita).

O Salário Líquido corresponde ao Salário Bruto menos os descontos. O programa deverá pedir ao usuário 
o valor da sua hora e a quantidade de horas trabalhadas no mês.

Desconto do IR: 
Salário Bruto até 900 (inclusive) - isento
Salário Bruto até 1500 (inclusive) - desconto de 5%
Salário Bruto até 2500 (inclusive) - desconto de 10%
Salário Bruto acima de 2500 - desconto de 20%.

Imprima na tela as informações, dispostas conforme o exemplo abaixo. No exemplo o valor da hora é 5 e a
quantidade de hora é 220.

Salário Bruto: (5 * 220)          : R$ 1100,00
  (-) IR (5%)                     : R$   55,00
  (-) INSS ( 10%)                 : R$  110,00
  FGTS (11%)                      : R$  121,00
  Total de descontos              : R$  165,00
  Salário Liquido                 : R$  935,00
]]

io.write("Por favor, informe qual é o valor da sua remuneração por hora: ")
local salario = tonumber(io.read())

io.write("Digite quantas horas você trabalha no mês: ")
local hora = tonumber(io.read())

local salario_bruto = salario * hora

print("")

if salario_bruto <= 0 then
  print("Erro no salário!")
elseif salario_bruto <= 900 then
  local ir = salario_bruto * 0
  local inss = salario_bruto * 0.10
  local fgts = salario_bruto * 0.11
  local total_desconto = ir + inss
  local salario_liquido = salario_bruto - total_desconto
  print(
    string.format(
      "Salário bruto: (%d * %.2f)       : R$ %.2f\n" ..
      "(-) IR (0%%)                     : R$ %.2f\n" ..
      "(-) INSS ( 10%%)                 : R$ %.2f\n" ..
      "FGTS (11%%)                      : R$ %.2f\n" ..
      "Total de descontos               : R$ %.2f\n" ..
      "Salário Liquido                  : R$ %.2f\n",
      hora, salario, salario_bruto, ir, inss, fgts, total_desconto, salario_liquido)
  )
elseif salario_bruto > 900 and salario_bruto <= 1500 then
  local ir = salario_bruto * 0.05
  local inss = salario_bruto * 0.10
  local fgts = salario_bruto * 0.11
  local total_desconto = ir + inss
  local salario_liquido = salario_bruto - total_desconto
  print(
    string.format(
      "Salário bruto: (%d * %.2f)       : R$ %.2f\n" ..
      "(-) IR (5%%)                     : R$ %.2f\n" ..
      "(-) INSS ( 10%%)                 : R$ %.2f\n" ..
      "FGTS (11%%)                      : R$ %.2f\n" ..
      "Total de descontos               : R$ %.2f\n" ..
      "Salário Liquido                  : R$ %.2f\n",
      hora, salario, salario_bruto, ir, inss, fgts, total_desconto, salario_liquido)
  )
elseif salario_bruto > 1500 and salario_bruto <= 2500 then
  local ir = salario_bruto * 0.10
  local inss = salario_bruto * 0.10
  local fgts = salario_bruto * 0.11
  local total_desconto = ir + inss
  local salario_liquido = salario_bruto - total_desconto
  print(
    string.format(
      "Salário bruto: (%d * %.2f)       : R$ %.2f\n" ..
      "(-) IR (10%%)                    : R$ %.2f\n" ..
      "(-) INSS ( 10%%)                 : R$ %.2f\n" ..
      "FGTS (11%%)                      : R$ %.2f\n" ..
      "Total de descontos               : R$ %.2f\n" ..
      "Salário Liquido                  : R$ %.2f\n",
      hora, salario, salario_bruto, ir, inss, fgts, total_desconto, salario_liquido)
  )
elseif salario_bruto > 2500 then
  local ir = salario_bruto * 0.20
  local inss = salario_bruto * 0.10
  local fgts = salario_bruto * 0.11
  local total_desconto = ir + inss
  local salario_liquido = salario_bruto - total_desconto
  print(
    string.format(
      "Salário bruto: (%d * %.2f)       : R$ %.2f\n" ..
      "(-) IR (20%%)                     : R$ %.2f\n" ..
      "(-) INSS ( 10%%)                 : R$ %.2f\n" ..
      "FGTS (11%%)                      : R$ %.2f\n" ..
      "Total de descontos               : R$ %.2f\n" ..
      "Salário Liquido                  : R$ %.2f\n",
      hora, salario, salario_bruto, ir, inss, fgts, total_desconto, salario_liquido)
  )
end
