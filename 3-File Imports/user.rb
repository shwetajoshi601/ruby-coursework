require_relative 'validator'
require_relative 'print'

def register_user
    puts "Enter your name: "
    name = gets.chomp
    if name_valid?(name)
        then puts "OK"
    end
    puts "Enter your Student ID: "
    id = gets.chomp
    if id_valid?(id)
        then puts "OK"
    end
    puts "Enter your email: "
    email = gets.chomp
    if email_ucd?(email)
        then puts "OK"
    end
    puts "Enter your phone number: "
    phone = gets.chomp
    puts "OK"
    puts "Following are the details that you have entered : "
    print_details(name, id, email, phone)
end

register_user()