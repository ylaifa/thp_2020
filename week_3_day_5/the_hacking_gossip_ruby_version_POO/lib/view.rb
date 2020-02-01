require 'gossip'

class View
    def create_gossip
        puts 'Bonjour, quel est ton nouveau gossip ?'
        puts 'Quel est ton nom :'
        @author = gets.chomp
        puts 'Quel est ton gossip :'
        @content = gets.chomp
        params = { author: @author, content: @content }
        
        return params 
        
    end

    def index_gossips(gossips)
        if gossips.empty? #tu checkes que ton array existe et qu'il est vide
            puts "Il n'y a pas de gossip a afficher."
            puts "\n"
        end
        gossips.each do |gossip|
            puts "Auteur : #{gossip.author} // Gossip : #{gossip.content}" 
            puts "\n"
        end
    end

    def delete_gossip (gossips)
        if gossips.empty? #tu checkes que ton array existe et qu'il est vide
            puts "Il n'y a pas de gossip a supprimer."
            puts "\n"
            Router.new.perform
        end
        puts "Voici les potins du jour :"
        gossips.each_with_index { |gossip, index|
          # each with index envoie la valeur + son index (à partir de 0)
          puts "#{index+1} - Auteur => #{gossip.author} // Gossip => #{gossip.content} !"
        }
        puts "\n"
        delete_gossip_choice = nil
        until (1..gossips.length).to_a.include?(delete_gossip_choice)
          puts "Indique l'index de celui que tu veux supprimer"
          print '> '
          delete_gossip_choice = gets.chomp.to_i
        end
        return delete_gossip_choice 
      end
end