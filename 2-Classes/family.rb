class FamilyMember
    attr_accessor :name, :age, :sex, :status, :children
    # initializing instance variables
    def initialize(name, age, sex, status, children)
        @name = name
        @age = age
        @sex = sex
        @status = status
        @children= children
    end

    # function to check if the member is a parent
    def Parent?()
        if @age > 18 && @children > 0
            if @sex == "M" then "Father"
            else "Mother"
            end
        elsif @status == "NA" && @children > 0
            then "Dog"
        else false
        end
    end

    # function to check if member is a child
    def Child?()
        if @age < 18 && @status == "underage"
            if @sex == "M" then "Son"
            else "Daughter"
            end
        elsif @status == "NA" && @children == 0
            then "Dog"
        else false
        end
    end
end

# Five instances
fm1 = FamilyMember.new("James", 35, "M", "married", 2)
fm2 = FamilyMember.new("Julie", 32, "F", "single", 2)
fm3 = FamilyMember.new("Kate", 10, "F", "underage", 0)
fm4 = FamilyMember.new("Jerry", 13, "M", "underage", 0)
fm5 = FamilyMember.new("Brownie", 5, "F", "NA", 4)

puts "Is fm1 Parent? " + fm1.Parent?.to_s
puts "Is fm1 Child? " + fm1.Child?.to_s
puts "Is fm2 Parent? " + fm2.Parent?.to_s
puts "Is fm2 Child? " + fm2.Child?.to_s
puts "Is fm3 Parent? " + fm3.Parent?.to_s
puts "Is fm3 Child? " + fm3.Child?.to_s
puts "Is fm4 Parent? " + fm4.Parent?.to_s
puts "Is fm4 Child? " + fm4.Child?.to_s
puts "Is fm5 Parent? " + fm5.Parent?.to_s
puts "Is fm5 Child? " + fm5.Child?.to_s

# Print name and status using each
members = [fm1, fm2, fm3, fm4, fm5]

def print_info_each(members)
    members.each {|member| puts "Name: " + member.name + ", Status: " + member.status}
end

# Print member details using each do
def print_info_do(members)
    members.each do |member|
        puts "Name: #{member.name}"
        puts "Age: #{member.age}"
        puts "Sex: #{member.sex}"
        puts "Status: #{member.status}"
        puts "Children: #{member.children}"
        puts "-------------------------------------"
    end
end

puts "================Name and Status============="
print_info_each(members)
puts "==============Member details================"
print_info_do(members)