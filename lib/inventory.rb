class Inventory
  attr_reader :list, :menu
  def initialize
    @list = {}
    @menu = {}
  end

  def add_dish(dish, quantity)
    @list[dish] = (@list.key?(dish) ? @list[dish] + quantity : quantity)
    @menu[dish.name] = dish.price
  end

  def remove_dish(dish, quantity)
    if @list.key?(dish)
      @list[dish] > quantity ? (@list[dish] = @list[dish] - quantity) : (fail "There are only #{@list[dish]} #{dish.name}s in the list")
    else
      fail "#{dish} is not in the list"
    end
  end
end
