require 'order'

describe Order do
  let(:order) { Order.new }
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  it 'has an empty basket when created' do
    expect(order.basket).to eq({})
  end

  it 'can place a dish and a quantity in the basket' do
    order.add_dish(burger, 2)
    expect(order.basket).to eq({ burger => 2 })
  end

  xit 'for a specific dish, cannot place a bigger quantity than available' do
  end

  xit 'can remove a dish and a quantity from a basket' do
  end

  xit 'for a dish in the basket, cannot remove a bigger quantity than previously selected' do
  end

  xit 'can be confirmed' do
  end

  xit 'can be cancelled' do
  end
end
