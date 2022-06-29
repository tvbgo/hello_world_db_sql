require 'sqlite3'
db_file_path = File.join(File.dirname(__FILE__), "./chinook.db")
DB = SQLite3::Database.open(db_file_path)

# 2. Escolha uma tabela e crie um método para realizar cada operação do 'CRUD'

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
    DB.execute("INSERT INTO artists(name) VALUES (?)", artist.name)
    @id = DB.last_insert_row_id
  end

	# 	- Read

	def self.find(id)
		DB.results_as_hash = true
    first_row = DB.execute("SELECT * FROM artists WHERE artistId = ?", id).first
    build_record(first_row) if first_row
	end

	def self.all
		DB.results_as_hash = true
		DB.execute("SELECT * FROM artists").map { |row| build_record(row) }
	end
	# 	- Update

	def self.update(artist)
		DB.execute("UPDATE artists SET name = ? WHERE artistId = ?", artist.name, artist.id)
	end

	# 	- Destroy

	def self.destroy(artist)
		DB.execute("DELETE FROM artists WHERE artistId = ?", artist.id)
	end

	# Use esse método para instanciar o resultados das queries em objetos
	def self.build_record(row)
		attributes = {
      		id: row["ArtistId"],
      		name: row["Name"],
    	}
    	Artist.new(attributes)
	end

	def self.name
		@name		
	end
end
