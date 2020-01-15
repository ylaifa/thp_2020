puts "Hello, quelle est ton année de naissance ?"

print "> "
year_of_born = gets.chomp.to_i

i = 1
while (i <= 2020 - year_of_born)
    if i <= 1
        puts "Il y a #{2020 - year_of_born - i} ans, tu avais #{i} an"
        i += 1 
    elsif (2020 - year_of_born - i == 1)
        puts "Il y a #{2020 - year_of_born - i} an, tu avais #{i} ans"
        i += 1 
    elsif (i == 2020 - year_of_born)
        puts "Cette année, tu as #{i} ans"
        i += 1 
    else
        puts "Il y a #{2020 - year_of_born - i} ans, tu avais #{i} ans"
        i += 1 
    end
end