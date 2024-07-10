--[[
Faça um programa que converta metros em centímetros.
--]]

io.write("Insira uma medida em metros: ")
local metros = tonumber(io.read())

local cent = metros * 100

print(string.format("A conversão em centímetros é %.2f.", cent))
