class Order
  attr_reader :basket
  def initialize
    @basket = {}
  end

  def add_dish(dish, quantity, from)
    quantity > from.list[dish] ? (fail "Sorry. There are only #{from.list[dish]} #{dish.name}s left") : @basket[dish] = quantity
  end

  def remove_dish(dish, quantity)
    @basket[dish] < quantity ? (fail "Error. There are only #{@basket[dish]} #{dish.name}s in your basket") : @basket[dish] -= quantity
  end
end
