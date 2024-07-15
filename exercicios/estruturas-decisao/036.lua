--[[
Faça um Programa que peça uma data no formato dd/mm/aaaa e determine se a mesma é uma data válida.
]]

io.write('Me informe uma data nesse formata "dd/mm/aaaa": ')
local data = io.read()

local dia = tonumber(string.sub(data, 1, 2))
local mes = tonumber(string.sub(data, 4, 5))
local ano = tonumber(string.sub(data, 7, 10))

print("")

if ano <= 0 then
  print("Ano Inválido!")
  if mes <= 0 then
    print("Mês Inválido")
  elseif mes == 4 or mes == 6 or mes == 9 or mes == 11 then
    if dia > 0 and dia <= 30 then
      print("Data Válida!")
    else
      print("Dia Inválido!")
    end
  elseif mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8
    or mes == 10 or mes == 12 then
    if dia > 0 and dia <= 31 then
      print("Data Válida!")
    else
      print("Dia Inválido!")
    end
  end
end

if ano % 4 == 0 then
  if ano % 100 == 0 then
    if ano % 400 == 0 then
      if dia > 0 and dia <= 29 then
        print("Data Válida!")
      else
        print("Dia Inválido!")
      end
    else
      if dia > 0 and dia <= 28 then
        print("Data Válida!")
      else
        print("Dia Inválido!")
      end
    end
  else
    if dia > 0 and dia <= 28 then
      print("Data Válida!")
    else
      print("Dia Inválido!")
    end
  end
else
  if dia > 0 and dia <= 28 then
    print("Data Válida!")
  else
    print("Dia Inválido!")
  end
end
