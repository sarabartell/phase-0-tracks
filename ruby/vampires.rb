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

how_old = 2017 - year
if age == how_old
  vamp_age = true
else
  vamp_age = false

end


# define garlic_bread
if garlic_bread == "Y"
  garlic_bread = true
else
  garlic_bread = false

end


# # define insurance
if insurance == "Y"
  insurance = true
else
  insurance = false

end

if vamp_age && (insurance || garlic_bread)
   puts "probably not vampire"
   elsif !vamp_age && (garlic_bread || insurance)
   puts "probably a vampire"
   elsif !(vamp_age && garlic_bread && insurance)
   puts "almost certainly a vampire"
 else
   puts "result inconclusive"

   end

# if vamp_age = true, AND garlic bread = true OR insurance = true, then p "probably not vampire"
# true && (true || false)

# if vamp_age = false, AND garlic_bread = false, then p "probably a vampire"
# !true && (true || false)

# if vamp_age = false, AND garlic_bread = false, AND insurance = false, then p "almost certainly a vampire"
# !true && !true && !true

# if name == Drake Cula or name == Tu Fang, then p "definitely a vampire"

# if none of above p "results inconclusive"