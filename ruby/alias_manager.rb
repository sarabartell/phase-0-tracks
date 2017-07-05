# # want to swap or replace vowels in full_name with vowels.next or so
# # first make sure vowels are maping right


def alias_generator(name)

name = name.downcase

vowels_lowcase = %w(a e i o u)
vowels = vowels_lowcase
consonants_lowcase = ("a".."z").to_a - vowels
consonants = consonants_lowcase

# original = (vowels + consonants)
# new_letters = (vowels.rotate + consonants.rotate)

name_array = name.split
name_reverse = name_array.reverse

name_reverse.map! do |word|
  word_split = word.split("")
  # name_reverse[1].split("")

  word_split.map! do |letter|
    if vowels.include? letter
      index = vowels.index(letter)
      if letter == vowels.last
        letter = vowels.first
      else
        letter = vowels[index + 1]
      end
    else
      index = consonants.index(letter)
      if letter == consonants.last
        letter = consonants.first
      else
        letter = consonants[index + 1]
      end
    end
  end

  word_split[0] = word_split[0].upcase
  word_split.join('')
end

name_reverse.join(' ')
# # p name_reverse.tr(original,new_letters)



end

puts "Enter your first and last name to scramble. Enter quit when you are finished"
  loop_run = true
  # scrambled_name = gets.chomp
  # puts alias_generator(scrambled_name)
  while loop_run == true
  puts "Give me your name:"
  name_list = gets.chomp
  if name_list == "quit"
    puts "done!"
    loop_run = false
  else
     puts alias_generator(name_list)
     loop_run = true
  end
end