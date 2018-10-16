puts "     |     |     "
puts "  1  |  2  |  3  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  4  |  5  |  6  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  7  |  8  |  9  "
puts "     |     |     "


@array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]


def trouduc
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


trouduc

end

trouduc
