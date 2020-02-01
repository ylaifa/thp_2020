require 'nokogiri'
require 'open-uri'

# 1. Tu dois être capable d'obtenir un e-mail de mairie à partir de la page de cette dernière
# (pas en partant du listing complet des mairies). 
# Fais d'abord une méthode get_townhall_email(townhall_url) 
# qui récupère l’e-mail d'une mairie à partir de l'URL de mairies, par exemple celle de Avernes.

class Scrapper
    def get_townhall_email(townhall_url)
    # Fetch and parse HTML document

    doc = Nokogiri::HTML(open(townhall_url))

    return doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

    end

    # get_townhall_email("http://annuaire-des-mairies.com/91/abbeville-la-riviere.html")

    # 2. Une fois que tu sais le faire pour une mairie, 
    # tu vas vouloir industrialiser et répéter ça sur tout l'annuaire du Val d'Oise. 
    # La prochaine étape est de coder une méthode get_townhall_urls qui récupère les URLs de chaque ville du Val d'Oise.

    def get_townhall_urls

        doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

        townhall_urls_array = Array.new 

        doc.xpath('//*[@class="lientxt"]').each do |name|
            townhall_urls_array << "http://annuaire-des-mairies.com/95/" + "#{name[:href][5..-6]}" + ".html"
        end
        townhall_urls_array
    end

    # get_townhall_urls

    def hash_with_name_and_email_townhall
        a = Array.new
        get_townhall_urls.each do |townhall_url|
            townhalls_emails = Hash.new
            townhalls_emails[townhall_url[35..-6].capitalize] = get_townhall_email(townhall_url)
            a << townhalls_emails
        end
        a
    end
end
