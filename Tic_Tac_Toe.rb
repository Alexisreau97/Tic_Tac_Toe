# tic_tac_toe

require "awesome_print"

class Board 
	def initialize
	  @@array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
	end

	def initial_board
	  puts top_top = "     |     |     "
      puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
      puts top_bottom = "_____|_____|_____"
      puts middle_top = "     |     |     "
      puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
      puts middle_bottom =  "_____|_____|_____"
      puts bottom_top = "     |     |     "
      puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
      puts bottom_bottom = "     |     |     "
	end
end

class Player
  attr_accessor :name, :player_value
  attr_writer :win

  def initialize(name, player_value)
    @name = name
    @player_value = player_value
    @win = win = false
  end
end

class Game < Board
  def initialize
  #TO DO : créé 2 joueurs, créé un board
  @@array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]   
  end

  def go 
    # TO DO : lance la partie
    puts "Joueur 1 écrit ton nom"
    @player1 = Player.new(gets.chomp, "X".blue)
    puts "#{@player1.name} Tu joue la #{@player1.player_value}" 
    puts "Joueur 2 écrit ton nom"
    @player2 = Player.new(gets.chomp, "O".red)
    puts "#{@player2.name} Tu joue le #{@player2.player_value}"
  end

  def win_condition
	  return true if @@array[1] == @@array[2] && @@array[2] == @@array[3]
	  return true if @@array[4] == @@array[5] && @@array[5] == @@array[6]
	  return true if @@array[7] == @@array[8] && @@array[8] == @@array[9]
	  return true if @@array[1] == @@array[4] && @@array[4] == @@array[7]
	  return true if @@array[2] == @@array[5] && @@array[5] == @@array[8]
	  return true if @@array[3] == @@array[6] && @@array[6] == @@array[9]
	  return true if @@array[1] == @@array[5] && @@array[5] == @@array[9]
	  return true if @@array[3] == @@array[5] && @@array[5] == @@array[7]
  end

  def turn
  #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie

    i = 0
    puts "tour de #{@player1.name}"

    i = gets.chomp
    @@array[i.to_i] = "X".blue

    puts top_top = "     |     |     "
    puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
    puts top_bottom = "_____|_____|_____"
    puts middle_top = "     |     |     "
    puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
    puts middle_bottom =  "_____|_____|_____"
    puts bottom_top = "     |     |     "
    puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
    puts bottom_bottom = "     |     |     "

	  return puts "#{@player1.name} à gagné" if win_condition == true

    i = 0
    puts "Tour de #{@player2.name}"
    i = gets.chomp
    @@array[i.to_i] = "O".red

    puts top_top = "     |     |     "
    puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
    puts top_bottom = "_____|_____|_____"
    puts middle_top = "     |     |     "
    puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
    puts middle_bottom =  "_____|_____|_____"
    puts bottom_top = "     |     |     "
    puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
    puts bottom_bottom = "     |     |     "

    return puts "#{@player2.name} à gagné" if win_condition == true

    turn
  end
end

def perform
  game = Game.new
  game.go
  Board.new.initial_board
  game.turn
  puts "voulez-vous rejouer ? (Y/N)"
  return perform if gets.chomp == "Y"
end

perform
