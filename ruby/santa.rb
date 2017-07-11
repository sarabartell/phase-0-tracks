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

def get_mad_at(reindeer_name)
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @reindeer_ranking.delete_if {|names| names == reindeer_name}
  @reindeer_ranking.insert(-1, reindeer_name)
end

def celebrate_birthday(age)
  @age = age
  @age += 1
end

end

holiday = Santa.new("female","white")
p holiday.speak
p holiday.eat_milk_and_cookies("chocolate chip")
p holiday.celebrate_birthday(1)
p holiday.get_mad_at("Dasher")


santas = []
gender = ["female","male","transgender","N/A"]
ethnicity = ["white","pacific islander","african american","lantio"]
gender.length.times do |input|
  santas << Santa.new(gender[input], ethnicity[input])
end

p santas