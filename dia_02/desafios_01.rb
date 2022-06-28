require 'sqlite3'
db_file_path = File.join(File.dirname(__FILE__), "./chinook.db")
DB = SQLite3::Database.open(db_file_path)

# Crie os seguintes métodos:
# - `count_table` -> Conta o número de registros em uma tabela, recebe como parâmetro o nome da tabela
def count_table(table)
	result = 3
	p result
end

# - `find_customer` -> Encontra todos os registros de customer com um primeiro nome
## passado como parâmetro
def find_customer(first_name)
	result = # seu código aqui
	p result
end

# - `count_tracks` -> Conta o número de tracks para a playlist, recebe o nome da playlist como parâmetro
def count_tracks(playlist)
	result = # seu código aqui
	p result
end

## Para testar o seu código, faça as queries diretamente no banco como fizemos ontem
## e compare aqui os resultados. Remova comentário das linhas referente aos métodos
## já implementados


# p "A tabela tracks possui #{count_table('tracks')}"

# p "Sua pesquisa retornou a cliente: #{find_customer('Camille')}"

# p "A playlist Heavy Metal Classic possui #{count_tracks('Heavy Metal Classic')}"

