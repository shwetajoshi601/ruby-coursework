def print_error(error)
    puts "ERROR: " + error
    abort "Please try again!"
end

def print_details(name, id, email, phone)
    puts "--------------------------------------------"
    puts "NAME:         " + name
    puts "STUDENT ID:   " + id.to_s
    puts "EMAIL:        " + email
    puts "PHONE:        " + phone
    puts "--------------------------------------------"
end
