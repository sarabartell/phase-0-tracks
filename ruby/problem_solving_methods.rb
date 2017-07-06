# # have the array, put a number in as an argument
# #define variable read the input and determine if in the array
# #if true > convert that number to the index of the array and output it
# #if false, return nil

number_array = [4, 38, 29, 20, 95]


def search_array(number_array,answer)
correct = nil
index = 0

number_array.each do |numbers|
  if numbers == answer
    correct = index
  end
  # p index
  index += 1
end

p correct

end


search_array(number_array,20)

##fib numbers
# taking sum of numbers
# 0 1 1 2 3 5 8 13
# 0 1 2 3 4 5 6 7
#if n = 1 just put 1
# if n = 2 just 2
# after 2 we want to add previous 2 to give new sum so 1+2 = 3 and 2+3= 5

def fib_seq(number)
  location1 = 0
  location2 = 1
  fib_number = [0, 1]

counter = 1
  until counter == number - 1
    next_number = fib_number[location1] + fib_number[location2]
    #n3 = n1 + n2
    #referenced the index of the array.
  fib_number << next_number
  counter += 1
  location1 +=1
  location2 +=1
end
p fib_number
end
fib_seq(6)

#make an array with unsorted Integers

#define the method with the array

#if we want them to be in numerical order use bubble_sort

#That will take the length of the array and turn it into a loop, putting smallest integer first, largest last.

# loop through as many times to swap the integers, break if they are already sorted.

# check if the number at a given array index is larger than the other number next to it.
# if TRUE it will swap the index values. So that the integers are flipped and in the correct order.


bubble_array = [4,2,45,38,13]
def bubble_sort(bubble_array)
  length = bubble_array.length
  # n = 5
  loop do
    swapped = false

  (length-1).times do |index|
      # 4.times do |4,2,45,38,13|
      if bubble_array[index] > bubble_array[index+1]
        #if array[0] > array[1+1] so array[2]
        # index at 0 > index at 1
        # 4 > 2 --> true
        bubble_array[index], bubble_array[index+1] = bubble_array[index+1], bubble_array[index]
        # index 0, index 1 = index 1, index 0
        # 4, 2 = 2, 4
        swapped = true
      end
    end

  break if not swapped
  end

p bubble_array
end

bubble_sort(bubble_array)