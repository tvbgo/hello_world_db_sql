require 'sqlite3'
db_file_path = File.join(File.dirname(__FILE__), "./chinook.db")
DB = SQLite3::Database.open(db_file_path)

# 2. Crie um método para realizar cada operação do 'CRUD'

class Artist
	attr_reader :id, :name
	attr_accessor :name

	def initialize(attributes = {})
		@id = attributes[:id]
		@name = attributes[:name]
	end

	# 	- Create
	def self.save(artist)
		artist.id ? update(artist) : insert(artist)
	end

	def self.insert(artist)
		# Inserir uma linha com novo artist no Banco
  end

	# 	- Read
	def self.find(id)
		# Encontrar uma linha com base no ID recebido
	end

	def self.all
		# Retornar uma array com todas as linhas da tabela artists
	end

	# 	- Update
	def self.update(artist)
		# Alterar o nome de uma linha
	end

	# 	- Destroy
	def self.destroy(artist)
		# Remover uma linha
	end

	# Use esse método para instanciar o resultados das queries em objetos
	def self.build_record(row)
		attributes = {
      		id: row["ArtistId"],
      		name: row["Name"],
    	}
    	Artist.new(attributes)
	end
end