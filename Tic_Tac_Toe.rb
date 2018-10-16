class Player
  attr_accessor :name, :player_value
  attr_writer :win

  def initialize(name, player_value)
    @name = name
    @player_value = player_value
    @win = win = false
  end

end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
	puts "Joueur 1 écrit ton nom"
	@player1 = Player.new(gets.chomp, "X")
	puts "#{player1.name} Tu joue la #{player1.player_value}" 
	puts "Joueur 2 écrit ton nom"
	@player2 = Player.new(gets.chomp, "O")
	puts "#{player2.name} Tu joue le #{player2.player_value}"


  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end


array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
puts 

array[2] = @player1.player_value