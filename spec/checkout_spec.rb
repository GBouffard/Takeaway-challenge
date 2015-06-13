require 'checkout'

describe Checkout do
  let(:burger) { double :dish, name: 'burger', price: 3 }
  let(:chips) { double :dish, name: 'chips', price: 1 }
  let(:order) { double :order, basket: { burger => 2, chips => 2 }, calculate_total: 8 }
  let(:inventory) { double :inventory, list: { burger => 5, chips => 10 } }
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
    allow(inventory).to receive(:remove_dish)
    checkout.pay(inventory)
    expect(checkout.paid).to be true
  end

  it 'removes the order dishes and quantities from the inventory when paid' do
    expect(inventory).to receive(:remove_dish).exactly(2).times
    checkout.pay(inventory)
  end

  it 'sends a confirmation sms when paid' do
    allow(inventory).to receive(:remove_dish)
    checkout.pay(inventory)
    expect(checkout.send_sms).to eq ('Message sent')
  end
end
