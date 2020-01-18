def say_hello(first_name)
    puts "Hello #{first_name} !"
end

def ask_first_name
    puts "What is your first name ?"
    print "> "
    first_name = gets.chomp
    return first_name
end

def perform
    first_name = ask_first_name
    say_hello(first_name)
end

perform
