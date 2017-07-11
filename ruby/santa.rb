class Santa

def initialize(gender,ethnicity)
 p "Initializing Santa instance..."
 @gender = gender
 @ethnicity = ethnicity
end

def speak
  "Ho, ho, ho! Haaaapy Holidays!"
end

def eat_milk_and_cookies(cookie)
  "That was a good #{cookie}!"
end

# def my_santa
#   puts @gender
#   puts @ethnicity
#   p @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#   puts @age = 0
# end

end

# holiday = Santa.new("female","white")
# p holiday.speak
# p holiday.eat_milk_and_cookies("chocolate chip")
# p holiday.my_santa


santas = []
gender = ["female","male","transgender","N/A"]
ethnicity = ["white","pacific islander","african american","lantio"]
gender.length.times do |input|
  santas << Santa.new(gender[input], ethnicity[input])
end

p santas