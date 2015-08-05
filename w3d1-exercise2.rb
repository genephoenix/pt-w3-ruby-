#bark = "woof"
#name = ("shakil stop" || "shakil STOP")
#cat_sound = "meow"

words_said = "hi"
until words_said == "go away"
  puts "What will you say to Shakil?"
  words_said = gets.chomp.downcase
  if words_said == "woof" 
    puts "woof ".upcase * 3
  elsif words_said == "shakil stop"
    puts " "
  elsif words_said == "meow"
    puts "woof " * 5
  elsif words_said.include? "treat"
    puts " " 
  elsif words_said == "go away"
    puts "Shakil leaves the room"
  else
    puts "woof"
  end
end  
