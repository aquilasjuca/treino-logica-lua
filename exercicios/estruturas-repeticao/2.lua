--[[
Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha igual ao nome do
usuário, mostrando uma mensagem de erro e voltando a pedir as informações.
]]

io.write("Digite seu nome de usuário: ")
local user = io.read()

io.write("Digite sua senha: ")
local pass = io.read()

while user == pass do
	print("Erro. Nome de usuário e senha iguais, porfavor informar credenciais diferentes.")
	io.write("Digite seu nome de usuário: ")
	user = io.read()

	io.write("Digite sua senha: ")
	pass = io.read()
end

print("")
print("Logado com Sucesso!")
