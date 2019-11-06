# Library Class
class Library
    attr_accessor :books, :users, :bookid_count, :userid_count 
    # initialize the library
    def initialize(books, users)
        @@bookid_count = 0
        @@userid_count = 0
        # list of Books in the library
        @books = books
        # list of users in the lirbrary
        @users = users
    end

    # Function to load pre-defined set of users
    def loadUsers()
        @@userid_count+=1
        user1 = User.new(@@userid_count, "Shweta", "Dublin 1", 1, Array.new)
        @@userid_count+=1
        user2 = User.new(@@userid_count, "Chirag", "Dublin 2", 5, Array.new)
        @@userid_count+=1
        user3 = User.new(@@userid_count, "Karishma", "Galway", 5, Array.new)

        @users += [user1, user2, user3]
    end

    # Function to load pre-defined set of books
    def loadBooks()
        @@bookid_count+=1
        book1 = Book.new(@@bookid_count, "Harry Potter", "JK Rowling", "Bloomsbury", 2010, 5, 5, 5)
        @@bookid_count+=1
        book2 = Book.new(@@bookid_count, "The Alchemist", "Paulho Coelho", "HarperTorch", 1998, 2, 2, 2)
        @@bookid_count+=1
        book3 = Book.new(@@bookid_count, "Operating Systems", "V.Kumar", "Techmax", 2018, 8, 5, 5)
        @@bookid_count+=1
        book4 = Book.new(@@bookid_count, "Data Mining", "Robert Shaw", "O Reilly", 2016, 8, 5, 5)
        @@bookid_count+=1
        book5 = Book.new(@@bookid_count, "Machine Learning", "Tom Mitchell", "O Reilly", 2016, 3, 2, 2)

        @books += [book1, book2, book3, book4, book5]
    end

    # Function to interactively add users to the library
    def addUsers()
        ch = 1

        while ch == 1
            puts "Enter User Name: "
            name = gets
            puts "Enter User Address: "
            address = gets
            puts "Enter Book Limit: "
            book_limit = gets
            # generate unique ID
            @@userid_count+=1
            
            user = User.new(@@userid_count, name, address, Array.new, book_limit)
            @users.push(user)

            puts "Add more users? Enter 1 or 0. YES=1, NO=0 "
            ch = gets.to_i
        end
    end

    # Display all the users
    def getAllUsers()
        puts "\nUSERS:"
        puts "-------------------------------------------------"
        @users.each {|user| puts "ID: " + user.id.to_s + "   Name: " + user.name}
        puts "-------------------------------------------------"
    end

    # Function to interactively add books to the library
    def addBooks()
        ch = 1
        while ch == 1
            puts "Enter Book Title: "
            title = gets
            puts "Enter Book Author: "
            author = gets
            puts "Enter Publication: "
            publication = gets
            puts "Enter Rack number: "
            rack_no = gets
            puts "Enter publication year: "
            year = gets
            puts "Total number of copies: "
            total_copies = gets

            @@bookid_count+=1
            
            book = Book.new(@@bookid_count, title, author, publication, year, rack_no, total_copies, total_copies)
            @books.push(book)

            puts "Add more books? Enter 1 or 0. YES=1, NO=0 "
            ch = gets.to_i
        end
    end

    # Function to display all the books in the library
    def getAllBooks()
        puts "\nBOOKS:"
        puts "-------------------------------------------------"
        @books.each {|book| puts "ID: " + book.id.to_s +
        ", Name: " + book.title +
        ", Author: " + book.author +
        ", Publication: " + book.publication +
        ", Year: " + book.year.to_s +
        ", Rack No.: " + book.rack_no .to_s+
        ", Total Copies: " + book.total_copies.to_s +
        ", Copies Available: " + book.copies_available.to_s
        }
        puts "-------------------------------------------------"
    end

    #  Function to display a summary of the library status
    def displayLibraryDetails()
        getAllUsers()
        getAllBooks()
        puts "SUMMARY"
        puts "---------------------------------"
        puts "Total Number of Books: " + @books.length.to_s
        puts "Total Number of Users: " + @users.length.to_s
        puts "---------------------------------"
    end

    # Function to borrow a book from the library
    def borrowBook()
        puts "Enter the user name: "
        user_name = gets.chomp

        # check if the user name is valid
        if isUserValid?(user_name)
            then
            # check if the user's book limit is exceeded
            if !isUserBookLimitExceeded?(user_name)
                then
                puts "\nEnter the book to be borrowed: "
                book_name = gets.chomp
                # check if the requested book is available
                if isBookAvailable?(book_name)
                    then
                    puts "The book is available!\n"
                    # add the book to the user's list of borrowed books
                    updateUserBooks(user_name, book_name)
                    # decrement the number of available copies
                    updateBookCopies(book_name)
                    # display the details
                    displayLibraryDetails()
                else
                    # error message
                    puts "Sorry! This book is not available!"
                end
            else
                # error message
                puts "Book limit exceeded!"
            end
        else
            # error message
            puts "Invalid user!!"
        end
    end

    # Function to validate the user name entered
    def isUserValid?(user_name)
        @users.each do |user|
            if user.name == user_name
                then
                print "User found!"
                return true
            end
        end
        false
    end

    # Function to validate user's book limit
    def isUserBookLimitExceeded?(user_name)
        user_record = @users.find do |user|
            user.name == user_name
        end
        if user_record.books_borrowed.length >= user_record.book_limit
            then return true
        end
        false
    end

    # Function to check book availability
    def isBookAvailable?(book_name)
        book_record = @books.find do |book|
            book.title == book_name
        end
        if book_record == nil then return false end
        if book_record.copies_available != 0 then return true end
        false
    end

    # Function to add the borrowed book to the user's list of borrowed books
    def updateUserBooks(user_name, book_name)
        @users.each do |user|
            if user.name == user_name
                then
                user.books_borrowed.push(book_name)
                puts "USER DETAILS:"
                puts "------------------------------------------"
                puts "ID: " + user.id.to_s
                puts "Name: " + user.name
                puts "Address: " + user.address
                puts "Book Limit: " + user.book_limit.to_s
                puts "Books Borrowed:"
                puts user.books_borrowed
                puts "------------------------------------------"
            end
        end
    end

    # Function to decrement the number of available copies for the specified book
    def updateBookCopies(book_name)
        @books.each do |book|
            if book.title == book_name
                then
                book.copies_available -= 1
                puts "BOOK DETAILS:"
                puts "------------------------------------------"
                puts "ID: " + book.id.to_s
                puts "Name: " + book.title
                puts "Author: " + book.author
                puts "Publication: " + book.publication
                puts "Publication Year: " + book.year.to_s
                puts "Rack Number: " + book.rack_no.to_s
                puts "Total Copies: " + book.total_copies.to_s
                puts "Copies Available: " + book.copies_available.to_s
                puts "------------------------------------------"
            end
        end
    end
end