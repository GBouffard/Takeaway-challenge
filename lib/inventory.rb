class Inventory
  attr_reader :list
  def initialize
    @list = {}
  end

  def add_dish(dish, quantity)
    @list[dish] = (@list.key?(dish) ? @list[dish] + quantity : quantity)
  end
end
