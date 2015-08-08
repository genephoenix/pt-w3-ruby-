class Person
    attr_reader :first_name, :last_name, :gender, :profession

    def initialize(first_name, last_name, gender, profession)
        @first_name = first_name.capitalize
        @last_name = last_name.capitalize
        @gender = gender.downcase
        @profession = profession.downcase
    end

    def fullname 
        if @profession == "doctor"
            doctor
        elsif @profession == "lawyer"
            lawyer
        elsif @gender == "male"
            puts "My name is Mr. #{@first_name} #{@last_name}"
        elsif @gender == "female"
            puts "My name is Ms./Mrs. #{@first_name} #{@last_name}"
        else
            puts "My name is #{@first_name} #{@last_name}"
        end
    end

    def doctor
        puts "Dr. #{@first_name} #{@last_name}"
    end

    def lawyer
        puts "#{@first_name} #{@last_name}, Esq."
    end
end

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "What is your gender?"
gender = gets.chomp

puts "What is your profession?"
profession = gets.chomp

person = Person.new(first_name, last_name, gender, profession)

puts person.fullname

