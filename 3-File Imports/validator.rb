require_relative 'print'

def name_valid?(name)
    if name.length > 15
        then print_error("Name too long!!")
    else true end
end

def id_valid?(id)
    begin
        # Integer() throws an error if the argument is not a valid number
        if !Integer(id).instance_of?Fixnum
            then print_error("Not a valid number")
        else true end
    rescue
       print_error("Not a valid number") 
    end
end

# you can change the validation here
def email_ucd?(email)
    if email.length > 50
        then print_error("Email too long")
    elsif !email.end_with?"ucdconnect.ie"
        then print_error("Invalid email! Please enter your UCD connect email.")
    else true end
end
