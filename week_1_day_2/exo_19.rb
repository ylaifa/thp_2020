emails = []

i = 1
50.times do 
    if i < 10
        emails << "jean.dupont.0#{i}@email.fr"
        i += 1
    else 
        emails << "jean.dupont.#{i}@email.fr"
        i+= 1
    end
end

emails.each_with_index do |email, index|
    if index % 2 != 0
        puts email
    end
end