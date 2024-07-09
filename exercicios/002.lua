--[[ Faça um Programa que peça um número
e então mostre a mensagem "O número informado foi [número]".
--]]

io.write("Digite um número: ")
local numero = tonumber(io.read())

print("O número informado foi " .. numero..".")
