def sign_up
    puts "Crée ton mot de passe ?"
    print "> "

    password = gets.chomp
    return password
end

def login
    password = sign_up

    puts "Entre ton mot de passe : "
    print "> "
    
    login = gets.chomp
    while password != login
        puts 'Erreur de mot de passe:'
        puts 'Quel est ton mot de passe?'
        print '>'
        login = gets.chomp       
    end
end

def welcome_screen
    puts " "
    puts"********************"
    puts "* * * BIENVENU * * *" 
    puts "* * * * A LA * * * *"
    puts "* * SECRET--PAGE * *"
    puts "********************"  
    puts " "
    puts "Un sourire est une clef secrète qui ouvre bien des coeurs."
    puts " "
end

def perform
    login
    welcome_screen
end

perform