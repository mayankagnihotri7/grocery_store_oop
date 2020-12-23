require_relative "take_input"
require_relative "item"
require_relative "bill"

class Cart
  attr_reader :order

  def initialize
    @order = Hash.new(0)
  end

  def add_to_cart
    puts "Order has been confirmed. Thank you.\n\n"
    TakeInput.new.take_input(order)
    cart_items
    Bill.new(order).final_amount
  end

  def cart_items
    puts order
  end
end

Cart.new.add_to_cart
