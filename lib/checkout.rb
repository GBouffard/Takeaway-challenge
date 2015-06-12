class Checkout
  attr_reader :basket
  def initialize(order)
    @basket = order.basket
  end
end
