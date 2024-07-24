--[[
Faça um programa que leia e valide as seguintes informações:
a - Nome: maior que 3 caracteres;
b - Idade: entre 0 e 150;
c - Salário: maior que zero;
d - Sexo: 'f' ou 'm';
e - Estado Civil: 's', 'c', 'v', 'd';
]]

io.write("Digite seu nome: ")
local nome = io.read()

while #nome < 3 do
	print("")
	print("Nome deve ter mais que 3 caracteres!")
	io.write("Digite seu nome: ")
	nome = io.read()
end

io.write("Digite sua idade: ")
local idade = tonumber(io.read())

while idade < 0 or idade > 150 do
	print("")
	print("Idade deve estar entre 0 e 150!")
	io.write("Digite sua idade: ")
	idade = tonumber(io.read())
end

io.write("Digite seu salário: ")
local salario = tonumber(io.read())

while salario < 0 do
	print("")
	print("Salário deve ser maior que 0!")
	io.write("Digite seu salário: ")
	salario = tonumber(io.read())
end

io.write("Digite seu sexo, f - Feminino e m - Masculino: ")
local sexo = io.read()

while sexo ~= "m" and sexo ~= "f" do
	print("")
	print("Sexo inválido!")
	io.write("Digite seu sexo, f - Feminino e m - Masculino: ")
	sexo = io.read()
end

io.write("Digite seu estado civil, s - Solteiro, c - Casado, v - Viúvo e d - Divorciado: ")
local e_civil = io.read()

while e_civil ~= 's' and e_civil ~= 'c' and e_civil ~= 'v' and e_civil ~= 'd'do
  print("")
  print("Estado Civil inválido!")
  io.write("Digite seu estado civil, s - Solteiro, c - Casado, v - Viúvo e d - Divorciado: ")
  e_civil = io.read()
end

print("")

print("Nome: " ..  nome)
print("Idade: " .. idade)
print(string.format("Salário: R$ %.2f", salario))

if sexo == 'm' then
  print("Sexo: Masculino")
elseif sexo == 'f' then
  print("Sexo: Feminino")
end

if e_civil == 's' then
  print("Estado Civil: Solteiro")
elseif e_civil == 'c' then
  print("Estado Civil: Casado")
elseif e_civil == 'v' then
  print("Estado Civil: Viúvo")
elseif e_civil == 'd' then
  print("Estado Civil: Divorciado")
end
