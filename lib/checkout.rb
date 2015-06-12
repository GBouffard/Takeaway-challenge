class Checkout
  attr_reader :basket, :total, :paid
  def initialize(order)
    @basket = order.basket
    @total = order.calculate_total
    @paid = false
  end

  def pay(inventory)
    @paid = true
    @basket.each { |dish, quantity| inventory.remove_dish(dish, quantity) }
  end
end
