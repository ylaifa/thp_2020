puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

print "> "
level = gets.chomp.to_i 

puts "Voici la pyramide : "

i = 0
while i < level 
    print " " * (level - i)
    puts "#" * i
    i += 1
end