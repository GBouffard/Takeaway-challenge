require 'twilio-ruby'
require_relative 'secrets'

class Checkout
  attr_reader :basket, :total, :paid, :send_sms
  def initialize(order, phone = MY_NUMBER)
    @basket = order.basket
    @total = order.calculate_total
    @paid = false
    @phone = phone
  end

  def pay(inventory)
    @paid = true
    @basket.each { |dish, quantity| inventory.remove_dish(dish, quantity) }
    send_sms
  end

  def twilio_set_up
    account_sid = TWILIO_ACCOUNT_SID
    auth_token = TWILIO_AUTH_TOKEN
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_sms
    twilio_set_up
    time = Time.now
    @client.account.messages.create(
      from: "+44 #{TWILIO_NUMBER}",
      to: "+44 #{@phone.to_s}",
      body: "Hello and thanks for ordering with Tasty Frenchy. Tasty Frenchy: its yummy-yummy! You can expect your order to be delievered before #{time.hour + 1}:#{time.min}")
    'Message sent'
  end
end
