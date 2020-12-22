require_relative "take_input"

class Cart
  attr_reader :order

  def initialize
    @order = Hash.new(0)
  end

  def add_to_cart
   TakeInput.new.take_input(order)

   puts "Order for the following has been confirmed. Thank you.\n\n"
   
   return cart_items
  end

  def cart_items
    puts order
  end
end

Cart.new.add_to_cart
