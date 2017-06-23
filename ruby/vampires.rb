p "What is your name?"
name = gets.chomp

p "What is your age?"
age = gets.chomp

p "What year were you born?"
year = gets.chomp

p "Our cafeteria serves garlic bread. Would you like some? Y/N"
garlic_bread = gets.chomp

p "Would you like to enroll in our health insurance? Y/N"
insurance = gets.chomp

#birth_day = 2017- year
# age = gets.chomp
#how_old = birthday - age
#if how_old == 0
#age = true
#else
#age = false
how_old = 2017 - year.to_i
birth_day = how_old - age.to_i

if birth_day == 0
  vamp_age = true
else
  vamp_age = false

end


# if age true where how_old = age == year, AND garlic bread = true OR insurance = true, then not vampire

# if age = false