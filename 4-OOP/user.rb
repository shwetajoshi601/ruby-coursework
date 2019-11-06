# Bean class to define a User
class User
    attr_accessor :id, :name, :address, :book_limit, :books_borrowed

    def initialize(id, name, address, book_limit, books_borrowed)
        @id = id
        @name = name
        @address = address
        @book_limit = book_limit
        @books_borrowed = books_borrowed
    end
end