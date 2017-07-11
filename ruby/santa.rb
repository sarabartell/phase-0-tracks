class Santa

def initialize
 p "Initializing Santa instance..."
end

def speak
  "Ho, ho, ho! Haaaapy Holidays!"
end

def eat_milk_and_cookies(cookie)
  "That was a good #{cookie}!"
end

end

holiday = Santa.new

p holiday.speak
p holiday.eat_milk_and_cookies("chocolate chip")