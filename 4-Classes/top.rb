require_relative "library"
require_relative "book"
require_relative "user"

def main()
    # begin the program
    lib = Library.new(Array.new, Array.new)

    puts "WELCOME TO JAMES JOYCE LIBRARY SYSTEM\n"
    puts "----------------------------------------\n"
    # take choice from the user and call the corresponding functions
    choice = 0
    while choice < 4
        print "Please select your choice from the menu:
        1. Add Users
        2. Add Books
        3. Borrow Book
        4. Exit
        Choice: "
        choice = gets.to_i

        case choice
        when 1
            lib.addUsers()
            lib.getAllUsers()
        when 2
            lib.addBooks()
            lib.getAllBooks()
        when 3
            lib.loadUsers()
            lib.loadBooks()
            lib.borrowBook()
        when 4
            break
        else
            puts "Please enter a valid choice!"
        end
    end
end

main()