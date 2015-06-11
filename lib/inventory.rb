class Inventory
  attr_reader :list
  def initialize
    @list = {}
  end

  def add_dish(dish, quantity)
    @list[dish] = quantity
  end
end
