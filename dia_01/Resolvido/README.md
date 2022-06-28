# Dia 01 - Schemas e Interagindo com um Banco de Dados

### Desenhando schemas
Acesse a nossa ferramenta de desenhar schemas: https://drawsql.app/, crie um cadastro e faça os seguintes desenhos:

1. Desenhar uma relação 1:N

2. Desenhar uma relação N:N

3. Você recebeu a tarefa de desenhar um banco de dados para um aplicativo de reserva de hospedagem estilo Airbnb

	As especificações do projeto são:

	1. User
		- Possui os atributos: nome, idade, email, telefone, data de criação
		- Pode listar apartamentos para oferecer hospedagens
		- Pode reservar hospedagens em apartaments
		- Pode fazer um review de hospedagens
	2. Apartamento
		- Possui os atributos: endereço, valor, descrição
		- Pertence a User
	3. Hospedagem
		- Possui os atributos: data, valor
		- Possui User e Apartamento
	4. Review
		- Possui os atributos: descrição, nota
		- Pertence a User
		- Possui Hospedagem



### Aumentando a dificuldade

Recebemos um pedido de nova funcionalidade onde um User poderá "favoritar" Apartamentos. Como você implementaria isso no nosso desenho?


### Interagindo com um banco de dados

Sqlite3 - É um banco de dados simples, que funciona a partir de 1 único arquivo

1. Verificar se possui instalado, rodando no terminal:
	`sqlite3 -version`

	Caso não tenha, rodar para instalar:
	`sudo apt-get install sqlite3 libsqlite3-dev`

2. O banco de dados que usaremos já está nessa pasta, em um arquivo chamado 'chinook.db'. Você também pode baixar novamente ou visualizar o schema o banco de dados nos links abaixo. 
- [BD](https://www.sqlitetutorial.net/wp-content/uploads/2018/03/chinook.zip)
- [Schema](https://www.sqlitetutorial.net/wp-content/uploads/2018/03/sqlite-sample-database-diagram-color.pdf)

3. Navegue no terminal até essa pasta e rode o comando:
`sqlite3 chinook.db`

*Parabéns, você está oficialmente conectada no banco de dados!*

Vamos com alguns exercícios para aprendermos a interagir através do terminal(Hoje em dia temos alguns serviços que nos permitem conectar com bancos de dados com uma interface mais "amigável", pesquise sobre [DBeaver](https://dbeaver.io/download/) para conhecer mais sobre uma dessas opções). 

## Faça queries para responder as seguintes perguntas:

1. Quantos 'customers' a empresa possui?
`SELECT COUNT(customerID) FROM customers` -> 59

2. Quantos nomes de 'customers' existem que iniciam com a letra 'D'?
`SELECT COUNT(firstName), firstName FROM customers WHERE firstName LIKE 'D%';`

*Há alguns comandos de sqlite3 que formatam o retorno das queries, teste os comandos `.mode columns` e `.headers on` e repita as queries dos exercícios acima*

3. Qual o ID dos top 10 'artists' em quantidade de albums?
`SELECT artistID FROM (SELECT artistId, count(artistId) FROM albums GROUP BY artistId ORDER BY count(artistId) DESC limit 10) ORDER BY artistID;` -> 21, 22, 50, 58, 82, 84, 90, 114, 118, 150

4. Quantas tracks existem na playlist "Brazilian Music"?
`SELECT count(playlists.name) FROM tracks JOIN playlist_track ON playlist_track.trackId = tracks.trackId JOIN playlists ON playlists.playlistId = playlist_track.playlistId WHERE playlists.name = 'Brazilian Music' ;` -> 39