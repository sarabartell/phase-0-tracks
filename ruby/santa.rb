class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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

####code that contained getter and setters
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

end

### Code that originally tested methods
# gender = ["female","male","transgender","N/A"]
# ethnicity = ["white","pacific islander","african american","lantino"]

# santas = Santa.new(gender.sample,ethnicity.sample)
# p santas.speak
# p santas.eat_milk_and_cookies("chocolate chip")
# p santas.celebrate_birthday(1)
# p santas.get_mad_at("Dasher")
# # p santas.gender = "male"
# puts "Santas age is #{santas.age} and he is #{santas.ethnicity}"


def multi_santa
  gender = ["female","male","transgender","N/A"]
  ethnicity = ["white","pacific islander","african american","lantino"]
  age = (0..140).to_a
  santa_array = []
  first_santa = 0
  while first_santa < 51
    santas = Santa.new(gender.sample,ethnicity.sample)
    santas.celebrate_birthday(age.sample)
    santa_array << santas
    first_santa += 1
  end
  santa_array.each do |santa_number|
    p santas.speak
    p santas.eat_milk_and_cookies("chocolate chip")
    p santas.get_mad_at("Dasher")
  end
end

p multi_santa