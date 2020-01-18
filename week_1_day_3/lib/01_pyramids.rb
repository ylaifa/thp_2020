def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

    print "> "
    level = gets.chomp.to_i 

    puts "Voici la pyramide : "

    level.times do |i|
        puts "#" * i
        level += 1
    end
end

# half_pyramid

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    level = gets.chomp.to_i
    puts "Voici le pyramide :"
    i = 0
    while i <= level - 1
        print ' ' * (level - 1 - i)
        puts '#' * (2 * i + 1)
        i += 1
    end
end

# full_pyramid

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisi un nombre impair)"
    print "> "

    level = gets.chomp.to_i
    level2 = level/2

    while level%2 == 0
        puts "Entre un chiffre impair pour avoir une pyramide :-)" 
        level = gets.chomp.to_i
    end

    puts "Voici la pyramide :"

    i = 0
    while i <= level - 1
        if i < level2          
            print ' ' * (level2 - i)
            puts '#' * (2 * i + 1)
            i += 1
        elsif i > level2
            print ' ' * (i - level2)
            puts '#' * (2 * level - i * 2 - 1)
            i += 1
        else 
            puts '#' * level
            i += 1
        end    
    end
end

wtf_pyramid