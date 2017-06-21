##trying to ask user series of hamster questions, end is printing to ruby
## puts "question"
## gets.chomp statment
## if age == "" then puts nil
## else puts user-input-age

def hamster_questionare
  puts "What is the hamsters name?"
  name = gets.chomp

  puts "What is hamsters volume level 1-10"
  volume = gets.chomp

  puts "What is the fur color?"
  color = gets.chomp

  puts "Is this hamster a good adoption candidate? Y/N"
  adoption = gets.chomp

  puts "what is the estimated age of the hamster?"
  age = gets.chomp
  if age == ""
    age = nil
  else
    puts age
  end

 end

hamster_questionare