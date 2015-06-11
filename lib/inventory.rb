class Inventory
  attr_reader :list
  def initialize
    @list = {}
  end

  def add_dish(dish, quantity)
    @list[dish] = (@list.key?(dish) ? @list[dish] + quantity : quantity)
  end

  def remove_dish(dish, quantity)
    @list[dish] = (@list.key?(dish) ? @list[dish] - quantity : (fail "#{dish.to_s} is not in the list"))
  end
end
