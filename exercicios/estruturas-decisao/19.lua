--[[
Faça um Programa que leia um número inteiro menor que 1000 e imprima a quantidade de centenas,
dezenas e unidades do mesmo.

Observando os termos no plural a colocação do "e", da vírgula entre outros. Exemplo:
  326 = 3 centenas, 2 dezenas e 6 unidade
  12 = 1 dezena e 2 unidades

Testar com: 326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7 e 16
]]

io.write("Digite um número maior que 0 e menor que 1000: ")
local n = tonumber(io.read())
local str = tostring(n)

local centenas, dezenas, unidades

print("")

-- Unidades
if n <= 0 or n > 1000 then
  print("Número Inválido!")
elseif n > 0 and n < 9 then
  unidades = tonumber(string.sub(str, 1, 1))
  if unidades == 1 then
    print(unidades .." unidade.")
  elseif unidades > 1 or unidades == 0 then
    print(unidades .." unidades.")
  end
end

-- Dezenas
if n >= 10 and n <= 99 then
  dezenas = tonumber(string.sub(str, 1, 1))
  unidades = tonumber(string.sub(str, 2, 2))
  if dezenas == 1 then
    if unidades == 1 then
      print(dezenas .. "dezena e " .. unidades .. " unidade.")
    elseif unidades > 1 or unidades == 0 then
      print(dezenas .. " dezena e " .. unidades .. " unidades.")
    end
  elseif dezenas > 1 or dezenas == 0 then
    if unidades == 1 then
      print(dezenas .. "dezenas e " .. unidades .. " unidade.")
    elseif unidades > 1 or unidades == 0 then
      print(dezenas .. " dezenas e " .. unidades .. " unidades.")
    end
  end
end

-- Centenas
if n >= 100 and n <= 999 then
  centenas = tonumber(string.sub(str, 1, 1))
  dezenas = tonumber(string.sub(str, 2, 2))
  unidades = tonumber(string.sub(str, 3, 3))
  if centenas == 1 then
    if dezenas == 1 then
      if unidades == 1 then
        print(centenas .. " centena, " .. dezenas .. " dezena e " .. unidades .. " unidade.")
      elseif unidades > 1 or unidades == 0 then
        print(centenas .. " centena, " .. dezenas .. " dezena e " .. unidades .. " unidades.")
      end
    elseif dezenas > 1 or dezenas == 0 then
      if unidades == 1 then
        print(centenas .. " centena, " .. dezenas .. " dezenas e " .. unidades .. " unidade.")
      elseif unidades > 1 or unidades == 0 then
        print(centenas .. " centena, " .. dezenas .. " dezenas e " .. unidades .. " unidades.")
      end
    end
  elseif centenas > 1 or centenas == 0 then
    if dezenas > 1 or dezenas == 0 then
      if unidades == 1 then
        print(centenas .. " centenas, " .. dezenas .. " dezenas e " .. unidades .. " unidade.")
      elseif unidades > 1 or unidades == 0 then
        print(centenas .. " centenas, " .. dezenas .. " dezenas e " .. unidades .. " unidades.")
      end
    end
  end
end

