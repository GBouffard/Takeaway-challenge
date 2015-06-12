class Checkout
  attr_reader :basket, :total, :paid
  def initialize(order)
    @basket = order.basket
    @total = order.calculate_total
    @paid = false
  end

  def pay
    @paid = true
  end
end
