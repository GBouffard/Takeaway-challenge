require 'dish'

describe Dish do
  let(:pizza) { Dish.new('pizza', 6) }
  it 'has a name when created' do
    expect(pizza.name).to eq 'pizza'
  end

  it 'has a price when created' do
    expect(pizza.price).to eq 6
  end
end
