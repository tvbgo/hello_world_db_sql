10.times do 
	count = 1
	p "Criando user: #{count}"
	User.create(name: "User#{count}", email: "email#{count}@email.com")
	count += 1
	p "User criado"
end