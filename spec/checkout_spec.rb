require 'checkout'

describe Checkout do
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  let(:order) { double :order, basket: { burger => 2, chips => 2 } }
  let(:checkout) { Checkout.new(order) }

  it 'gets the confirmed basket from the order' do
    expect(checkout.basket).to eq({ burger => 2, chips => 2 })
  end

  xit 'can show the total amount to pay' do
  end

  xit 'can be paid' do
  end

  xit 'removes the order dishes and quantities from the inventory when paid' do
  end

  xit 'sends a confirmation sms when paid' do
  end
end
