# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_angrily("Im mad")

# puts Shout.yell_happily("I'm happpppy")

module Shout
  def shouting(words)
    puts words
  end
end

class Captain
  include Shout
end

class Soldier
  include Shout
end

captain = Captain.new
captain.shouting("I am the captain on this damn ship!!!!!")

soldier = Soldier.new
soldier.shouting("Affermative, Captain *saluts*")