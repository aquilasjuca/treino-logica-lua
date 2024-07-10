--[[
Faça um programa que peça o tamanho de um arquivo para download (em MB)
e a velocidade de um link de internet (em Mbps), calcule e informe o tempo
aproximado de download do arquivo usando este link (em minutos).
]]

io.write("Coloque o tamanho de um arquivo para download em MB: ")
local mb = tonumber(io.read())

io.write("Coloque a velocidade de um link de internet em Mbps: ")
local mbps = tonumber(io.read())

local segundos = (mb * 8) / mbps

local minutos = math.floor(segundos / 60)

local restoSegundos = math.floor(segundos % 60)

print("")
print(string.format("O tempo aproximado do download é %d"..
" minutos e %d segundos.", minutos, restoSegundos))

