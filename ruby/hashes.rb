## want to ask the user for input, fill out the form below:
# name, address,email, phone, favorite blue,
#then ask user to select wallpaper
#then ask user to select ombre
#put outputs in form of the hash
#asks for review, if == none so will need an if statement, no updates
## update new strings to symbols (do last maybe)
# finalize output

puts "Welcome to the Interior Designer Application! Please fill out the form"

puts "Name:"
designer_name = gets.chomp

puts "Address:"
designer_address = gets.chomp

puts "Email:"
designer_email = gets.chomp

puts "Phone:"
designer_phone = gets.chomp.to_i

puts "What is your fave shade of blue"
designer_blue = gets.chomp

puts "Wallpaper preferences: A) Paisley, B) Chevron, C) Photorealistic woodsy scenes, D) Abstract woodsy scenes"
wallpaper_prefereces = gets.chomp

puts "Ombre is: A) Fierce, B) So last season, C) Medieval and appalling"
ombre_preference = gets.chomp

designer_application = {
  name: designer_name,
  address: designer_address,
  email: designer_email,
  phone: designer_phone,
  shade_blue: designer_blue,
  wallpaper: wallpaper_prefereces,
  ombre: ombre_preference
}

puts "Your application states: #{designer_application}"
puts "Is this info correct? Please enter none if true, or enter needs corrections"
corrections = gets.chomp

if corrections == "none"
  puts "Great, here is your application #{designer_application}"
else
  puts "which input would you like to change?"
  user_input = gets.chomp
  puts "what would you like to change you answer to?"
  corrections = gets.chomp
  designer_application[user_input.intern] = corrections
  puts "#{user_input} has been changed to #{corrections}."
end

puts designer_application

## lets say user types "ombre: B", we want to change what gets spit out when we call puts #{designer_application} again from :ombre => A to :ombre => B
