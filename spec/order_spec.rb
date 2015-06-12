require 'order'

describe Order do
  let(:order) { Order.new }
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  let(:inventory) { double :inventory, list: { burger => 5, chips => 10 } }

  it 'has an empty basket when created' do
    expect(order.basket).to eq({})
  end

  it 'can place a dish and a quantity in the basket' do
    order.add_dish(burger, 2, inventory)
    expect(order.basket).to eq({ burger => 2 })
  end

  it 'for a specific dish, cannot place a bigger quantity than available' do
    expect { order.add_dish(burger, 6, inventory) }.to raise_error 'Sorry. There are only 5 burgers left'
  end

  it 'can remove a dish and a quantity from a basket' do
    order.add_dish(burger, 3, inventory)
    order.remove_dish(burger, 2)
    expect(order.basket).to eq({ burger => 1 })
  end

  it 'for a dish in the basket, cannot remove a bigger quantity than previously selected' do
    order.add_dish(burger, 3, inventory)
    expect { order.remove_dish(burger, 4) }.to raise_error 'Error. There are only 3 burgers in your basket'
  end

  it 'can be cancelled' do
    order.add_dish(burger, 3, inventory)
    order.cancel
    expect(order.basket).to eq({})
  end

  it 'can be confirmed' do
    checkout = double(:checkout, basket: { burger => 3 })
    order.add_dish(burger, 3, inventory)
    expect(checkout).to receive(:basket=)
    order.confirm(checkout)
  end
end
