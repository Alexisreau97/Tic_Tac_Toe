puts "     |     |     "
puts "  1  |  2  |  3  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  4  |  5  |  6  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  7  |  8  |  9  "
puts "     |     |     "



array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
i = 0
puts "Choisi une case"
i = gets.chomp
array[i.to_i] = "X"

puts "     |     |     "
puts "  #{array[1]}  |  #{array[2]}  |  #{array[3]}  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  #{array[4]}  |  #{array[5]}  |  #{array[6]}  "
puts "_____|_____|_____"
puts "     |     |     "
puts "  #{array[7]}  |  #{array[8]}  |  #{array[9]}  "
puts "     |     |     "

