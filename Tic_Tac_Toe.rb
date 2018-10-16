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
  @array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  def go
    # TO DO : lance la partie
    puts "Joueur 1 écrit ton nom"
    @player1 = Player.new(gets.chomp, "X")
    puts "#{@player1.name} Tu joue la #{@player1.player_value}" 
    puts "Joueur 2 écrit ton nom"
    @player2 = Player.new(gets.chomp, "O")
    puts "#{@player2.name} Tu joue le #{@player2.player_value}"
    
  end

  def turn
  #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    i = 0

    if @array[1] == "X" && @array[2] == "X"
      return puts "win"
    end

    puts "tour du joueur 1"

    i = gets.chomp
    @array[i.to_i] = "X"

    puts top_top = "     |     |     "
    puts top_middle = "  #{@array[1]}  |  #{@array[2]}  |  #{@array[3]}  "
    puts top_bottom = "_____|_____|_____"
    puts middle_top = "     |     |     "
    puts middle_middle = "  #{@array[4]}  |  #{@array[5]}  |  #{@array[6]}  "
    puts middle_bottom =  "_____|_____|_____"
    puts bottom_top = "     |     |     "
    puts bottom_middle = "  #{@array[7]}  |  #{@array[8]}  |  #{@array[9]}  "
    puts bottom_bottom = "     |     |     "

    if @array[1] == "X" && @array[2] == "X"  
      return puts "win"
    end


    i = 0
    puts "Tour du joueur 2"
    i = gets.chomp
    @array[i.to_i] = "O"

    puts top_top = "     |     |     "
    puts top_middle = "  #{@array[1]}  |  #{@array[2]}  |  #{@array[3]}  "
    puts top_bottom = "_____|_____|_____"
    puts middle_top = "     |     |     "
    puts middle_middle = "  #{@array[4]}  |  #{@array[5]}  |  #{@array[6]}  "
    puts middle_bottom =  "_____|_____|_____"
    puts bottom_top = "     |     |     "
    puts bottom_middle = "  #{@array[7]}  |  #{@array[8]}  |  #{@array[9]}  "
    puts bottom_bottom = "     |     |     "

    turn
  end
end


Game.new.go
Board.new
Game.new.turn