class Checkout
  attr_reader :basket, :total
  def initialize(order)
    @basket = order.basket
    @total = order.calculate_total
  end
end
