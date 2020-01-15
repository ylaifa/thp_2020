puts "Hello, quelle est ton année de naissance ?"
print "> "
year_of_born = gets.chomp.to_i

i = year_of_born
year = 0
while (i < 2021)
    if year == 0
        puts "On est en #{i}, ton année de naissance."
        i += 1
        year += 1
    elsif year == 1
        puts "On est en #{i} et tu as #{year} an."
        i += 1
        year += 1
    else
        puts "On est en #{i} et tu as #{year} ans."
        i += 1
        year += 1
    end
end