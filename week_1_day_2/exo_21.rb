puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

print "> "
level = gets.chomp.to_i 

puts "Voici la pyramide : "

level.times do |i|
    print " " * level
    puts "#" * i
    level -= 1
end