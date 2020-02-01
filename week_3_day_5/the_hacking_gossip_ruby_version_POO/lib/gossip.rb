require 'csv'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @content, @author = content, author
    end

    def save
        CSV.open('db/gossip.csv', "a") do |csv|
            csv << [@author, @content]
        end
    end

    def self.all
        all_gossips = Array.new
      
        CSV.open("db/gossip.csv", "r").each do |row|
            all_gossips << Gossip.new(row[0], row[1]) # pas utile de créer un objet si tu ne le rappelles pas - ça permet aussi de réfléchir au code et au pourquoi créer des objets ?
        end
        return all_gossips
    end

    def self.delete(gossips, delete_gossip_choice)
        gossips.delete_at(delete_gossip_choice-1) #car l'index contenu dans delete_gossip_choice a été augmenté de 1
        # on vide le fichier csv
        CSV.open("db/gossip.csv","w") do |csv|
          csv = ""
        end
        # on réécrit dans le csv les gossips restant
        gossips.each {|gossip| gossip.save}
      end
end

