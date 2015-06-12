require 'checkout'

describe Checkout do
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  let(:order) { double :order, basket: { burger => 2, chips => 2 }, calculate_total: 8 }
  let(:checkout) { Checkout.new(order) }

  it 'gets the confirmed basket from the order' do
    expect(checkout.basket).to eq({ burger => 2, chips => 2 })
  end

  it 'knows and shows the total amount to pay' do
    expect(checkout.total).to eq(8)
  end

  it 'has not been paid when created' do
    expect(checkout.paid).to be false
  end

  it 'can be paid' do
  	checkout.pay
    expect(checkout.paid).to be true
  end

  xit 'removes the order dishes and quantities from the inventory when paid' do
  end

  xit 'sends a confirmation sms when paid' do
  end
end
