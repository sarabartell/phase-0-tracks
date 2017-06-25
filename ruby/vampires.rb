puts "How many employees?"
employees_total = gets.chomp.to_i
first_employee = 1
# we want to ask # employees first, then run below loop how ever many time employees_total is, loop within a loop like an inception loop

until first_employee > employees_total
puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our cafeteria serves garlic bread. Would you like some? Y/N"
garlic_bread = gets.chomp

puts "Would you like to enroll in our health insurance? Y/N"
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

#define if a vampire
if vamp_age && (insurance || garlic_bread)
   vampire = "probably not vampire"
   elsif !vamp_age && (garlic_bread || insurance)
   vampire = "probably a vampire"
   elsif !(vamp_age && garlic_bread && insurance)
   vampire = "almost certainly a vampire"
 else
   puts "result inconclusive"
end

  if name == "Drake Cula"
  vampire = "definitely a vampire"
 end

 if name == "Tu Fang"
   vampire = "definitely a vampire"
 end

  ##define allergies and stop loop if sunshine
puts "do you have any allergies? please list and type done when complete or type done if no allergies"

  loop_run = true
  while loop_run == true
  puts "list allergies"
  allergic = gets.chomp
  if allergic == "sunshine"
    vampire = "probably a vampire"
    loop_run = false
  elsif allergic =="done"
    loop_run = false
  else
    loop_run = true
   end
  end
  puts vampire

first_employee += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

# if vamp_age = true, AND garlic bread = true OR insurance = true, then p "probably not vampire"
# true && (true || false)

# if vamp_age = false, AND garlic_bread = false, then p "probably a vampire"
# !true && (true || false)

# if vamp_age = false, AND garlic_bread = false, AND insurance = false, then p "almost certainly a vampire"
# !true && !true && !true

# if name == Drake Cula or name == Tu Fang, then p "definitely a vampire"

# if none of above p "results inconclusive"