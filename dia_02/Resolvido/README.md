## Dia 02 - Interagindo com o nosso Banco de dados usando Ruby

sqlite3 gem
sinatra gem

1. Crie os seguintes métodos:
	- `count_table` -> Conta o número de registros em uma tabela, recebe como parâmetro o nome da tabela a ser consultada
	- `find_customer` -> Encontra todos os registros de customer com o nome passado como parâmetro
	- `count_tracks` -> Conta o número de tracks para a playlist, recebe o nome da playlist como parâmetro

2. Crie um método para realizar cada operação do 'CRUD'
	- Create
	- Read
	- Update
	- Destroy

### Aumentando a dificuldade
Criando a sua própria ORM. Todo mundo precisa de um banco de dados completo de Pokemons, e para construir o nosso vamos usar a [Pokemon API](https://pokeapi.co)

Para agilizar, a url para pegar informações de pokemons é `https://pokeapi.co/api/v2/pokemon/{id}`
E há 905 pokemons diferentes.
[Para fazer chamadas HTTP em ruby, dê uma olhada nessa doc](https://github.com/httprb/http)


Crie o seu BD mapeando os atributos: name, type, height, weight

Para se desafiar ainda mais, crie métodos que retornem os 5 pokemons mais pesados, os 5 mais baixos e quantos pokemons possuem o 'type' = 'fire'