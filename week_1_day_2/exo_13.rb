puts "Hello, quelle est ton année de naissance ?"
print "> "
year_of_born = gets.chomp.to_i

i = year_of_born
while i < 2021
    puts "#{i}"
    i = i + 1
end