# Bean class to define a Book
class Book
    attr_accessor :id, :title, :author, :publication, :year, :rack_no, :total_copies, :copies_available

    def initialize(id, title, author, publication, year, rack_no, total_copies, copies_available)
        @id = id
        @title = title
        @author = author
        @publication = publication
        @year = year
        @rack_no = rack_no
        @total_copies = total_copies
        @copies_available = copies_available
    end
end