# ask user for their name in 2 parts
# first_name = gets.chomp
# last_name = gets.chomp
# want to organize these inputs into an array, once in an array full_name = ['first_name', 'last_name'] , we want to switch the names
# something like full_name.reverse , so that index 0 and 1 switch the names up

puts "Welcome to name encryptor"
puts "enter your first name:"
first_name = gets.chomp

puts "enter your last name:"
last_name = gets.chomp

full_name = [first_name, last_name]
p full_name.reverse

# now that names are switched, we want to identify next vowels in another array vowels = ['a','e','i','o','u'] or caps

vowels = "aeiouAEIOU".chars
vowels.map! {|letter| letter.next}

p vowels

# want to swap or replace vowels in full_name with vowels.next or so
# first make sure vowels are maping right

def name(string)

end

name
