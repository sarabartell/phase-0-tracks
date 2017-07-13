class TodoList
  def initialize(list_items)
    @list_items = list_items
  end

  def get_items
   p @list_items
  end

  def add_item(chore)
    @list_items << chore
  end

  def delete_item(chore)
    @list_items.delete(chore)
  end

  def get_item(index)
    p @list_items[index]
  end
end