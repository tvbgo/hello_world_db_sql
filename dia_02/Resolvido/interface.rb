require_relative './desafios.rb'


def welcome_message
	puts "-------------------------------------------"
	puts "Bem-vinda a interface de Ruby para o seu BD"
	p "-------------------------------------------"
	puts "1 - Create Artist"
	puts "2 - Find Artist"
	puts "3 - Find All Artists"
	puts "4 - Update Artist"
	puts "5 - Delete Artist"
end

def actions
    welcome_message    
    @input = gets.chomp.to_i
    case @input
      when 1
        puts "---------------------------------------"
        puts "Insira o nome"
        @name = gets.chomp
        artist = Artist.new(name: @name)
        if Artist.save(artist)
        	puts "Salvo com sucesso"
        else
        	puts "Não funcionou..."
        end
      when 2
        puts "---------------------------------------"
        puts "Insira o ID"
        @id = gets.chomp.to_i
        artist = Artist.find(@id)
        p artist
        if artist
        	puts "Parabens, encontrei: #{artist.name}"
        else
        	puts "Não funcionou, ou não há ninguém com esse ID"
        end
      when 3
        puts "---------------------------------------"
        puts "Tentando buscar todos os artists"
        artists = Artist.all
        if !artists.empty?
        	puts "Parabens, encontrei: #{artists.length} registros"
        else
        	puts "Não funcionou......"
        end
      when 4
        puts "---------------------------------------"
        puts "Qual o ID para alterar?"
        @id = gets.chomp.to_i
        artist = Artist.find(@id)
        puts "Qual o novo nome?"
        @name = gets.chomp
        artist.name = @name
        if Artist.save(artist)
        	puts "Atualizado com sucesso"
        else
        	puts "Não funcionou..."
        end
      when 5
      	puts "---------------------------------------"
        puts "Qual o ID para deletar?"
        @id = gets.chomp.to_i
        if Artist.destroy(@id)
        	puts "Removido com sucesso"
        else
        	puts "Não funcionou..."
        end
      else
        puts "---------------------------------------"
        puts "Bye Bye! Obrigado por usar a Interface de testes!"
        puts "---------------------------------------"
    end
  end

  actions