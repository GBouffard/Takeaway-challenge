require 'inventory'

describe Inventory do
  let(:inventory) { Inventory.new }
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  it 'is empty when created' do
    expect(inventory.list).to eq({})
  end

  it 'can register new dishes and their quantities' do
    inventory.add_dish(burger, 25)
    inventory.add_dish(chips, 100)
    expect(inventory.list).to eq({ burger => 25, chips => 100 })
  end

  it 'can add a new quantity to an existing quantity of a same dish' do
    inventory.add_dish(burger, 25)
    inventory.add_dish(burger, 15)
    expect(inventory.list).to eq({ burger => 40 })
  end

  it 'can remove a selected quantity to an existing dish quantity' do
    inventory.add_dish(burger, 25)
    inventory.remove_dish(burger, 10)
    expect(inventory.list).to eq({ burger => 15 })
  end

  it 'cannot remove a selected quantity from a dish that is not in the list' do   
    expect { inventory.remove_dish('unicorn_steak', 10) }.to raise_error 'unicorn_steak is not in the list'
  end

  xit 'cannot remove a bigger quantity from a dish than available' do
  end

  xit 'can display a menu of all the available dishes and their prices' do
  end
end
