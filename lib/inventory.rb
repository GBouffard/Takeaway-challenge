class Inventory
  attr_reader :list
  def initialize
    @list = {}
  end

  def add_dish(dish, quantity)
    @list[dish] = (@list.key?(dish) ? @list[dish] + quantity : quantity)
  end

  def remove_dish(dish, quantity)
    if @list.key?(dish)
      @list[dish] > quantity ? (@list[dish] = @list[dish] - quantity) : (fail "There are only #{@list[dish]} #{dish.name}s in the list")
    else
      fail "#{dish} is not in the list"
    end
  end
end
