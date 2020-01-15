puts "Hello, donne moi un chiffre :"
print "> "
num = gets.chomp.to_i

i = 0
num.times do |i|
    puts "#{i + 1}"
    i = i + 1
end