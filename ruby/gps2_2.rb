# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create hash structure to store list items in
# default the quanity of items to 1
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: print back the hash of the list in a readable way with
#list item and quantity [what data type goes here, array or hash?]

begin_list = "carrots apples cereal pizza"


def create(begin_list)
  hash_list = {}
  default_quantity = 1
  list_array = begin_list.split(" ")

  list_array.each do |item|
    hash_list[item] = default_quantity
  end

  p hash_list
end

first_list = create(begin_list)
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take user iput for adding to the list
# then store the new item in the list with type and quanity if entered, otherwise default to 1
# output: updated list with new items

def add_item(item,first_list)
  quantity = 1
  first_list[item] = quantity

end

add_item("banana",first_list)

p first_list
# Method to remove an item from the list
# input: user input
# steps: take user input and remove called item entirely from the list
# output: updated list without item

# Method to update the quantity of an item
# input: item on the list already
# steps: loop through the hash to find the item(identify the key) and update the quantity of the item
# output: updated list with new quantity

# Method to print a list and make it look pretty
# input: hash with most updated list values
# steps: puts the items of the list out, edit the UI to make it look nice
# output: call at the end of driver code to show everything together