## Dia 04 - Associations and Validations / Bancos Não-Relacionais / Parsing and Scraping

1. Hoje vamos usar o mesmo banco de dados que usamos ontem, mas adicionando algumas associações.
**Lembre-se de ajustar o desenho do schema**
### Users
	- Email
	- Name
	- has many purchses
	- has many reviews
	- has many stores
	- has many products through stores

### Store
	- Name
	- Address
	- has many products
	- belongs to user

### Products
	- Description
	- Title
	- Value
	- belongs to a store

### Purchases
	- Total Value
	- Date
	- belongs to user
	- belongs to product

### Reviews
	- Title
	- Description
	- Stars
	- belongs to user
	- belongs to purchase

4. Validando os dados
### Users
	- O email deverá ser único para cada usuário
	- O email deverá ter um formato válido

### Stores
	- O name deverá ser único para cada store
	- Precisa ter um user 

### Products
	- O title deverá ser único para cada product dentro da mesma store
	- Precisa ter value e description
	- O value não pode ser 0
	- Precisa pertencer a uma loja

### Purchases
	-  A Data precisa ser no máximo até hoje, não pode ser no futuro

### Reviews
	- Um user somente pode fazer 1 review por purchase
	- Precisa ter todos os campos preenchidos
**Teste suas validações tentando criar registros inválidos para cada validação**

3. Refaça as suas seeds adicionando as relações das tabelas e se atenta para as validações criadas
