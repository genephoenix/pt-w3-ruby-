class Person
    attr_reader :first_name, :last_name, :gender, :title

    def initialize(first_name, last_name, gender, title)
        @first_name = first_name
        @last_name = last_name
        @gender = gender
        @title = title
    end

    def fullname 
        if title == "doctor"
            doctor
        elsif title == "lawyer"
            lawyer
        else
            puts " My name is #{@first_name} #{@last_name}"
        end
    end

    def doctor
        puts "Dr. #{first_name} #{last_name}"
    end

    def lawyer
        puts "#{first_name} #{last_name}, Esq."
    end
end

puts "What title do you want to go by?"
title = gets.chomp

person = Person.new("Sherlock", "Holmes", "male", title)

puts person.fullname

