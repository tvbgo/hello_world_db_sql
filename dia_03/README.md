## Dia 03 - ActiveRecord

Agora que a nossa vida ficou bem mais fácil com Active Record, que tal aplicarmos isso em uma situação real replicando algo que conhecemos? 

Hoje vamos criar o banco de dados para uma aplicação clone do Mercado Livre. Assim como no nosso modelo, nós também teremos Users, Products(produtos), Reviews, Purchases(compras).

1. Comece desenhando o banco de dados na nossa ferramenta de design utilizada no Dia 01, usando as especificações abaixo. 
**Nesse desafio, não vamos nos preocupar com as relações entre as tabelas!**

### Users
	- Email
	- Name

### Stores
	- Name
	- Address

### Products
	- Description
	- Title
	- Value

### Purchases
	- Total Value
	- Date

### Reviews
	- Title
	- Description
	- Stars
**Lembre-se da convenção, nome da tabela no plural, model no singular, coluna snake_case**

2. Agora vamos fazer as Migrations para criarmos as tabelas no nosso BD. Lembre-se do Timestamp e consulte a apresentação para ver a formatação e inserir as colunas depois de gerados os arquivos!

3. Um banco de dados, mesmo um de exemplo, precisa de dados! Escreva seeds para inserir um mínimo de:

- 9 users
- 3 stores
- 10 products
- 5 purchases
- 8 reviews

4. Imagino que o desafio anterior foi um exercício não somente de programação, mas de criatividade. Criarmos, de cabeça, dados falsos, mas se quisermos que façam algum sentido no contexto é difícil né? Vamos criar novas seeds agora, mas utilizando a gem [Faker](https://github.com/faker-ruby/faker) para fornecer esse toque de criatividade, afinal, não é todo dia que estamos inspiradas e as vezes precisamos de uma ajudinha!

Como estamos recebendo ajuda de fora as quantidades também mudaram:

- 100 users
- 50 stores
- 1000 products
- 300 purchases
- 250 reviews
