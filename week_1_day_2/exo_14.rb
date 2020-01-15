puts "Donne moi un nombre ?"
print "> "
number = gets.chomp.to_i

i = number
while (i >= 0)
    puts "#{i}"
    i -= 1
end