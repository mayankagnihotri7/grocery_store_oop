require_relative "product_list"

class TakeInput
  def take_input(cart_order)
    puts "Please enter all the items purchased separated by a comma"

    user_input = gets.chomp.downcase.gsub(/\s+/, "").split(",")

    if !user_input.empty?
      valid_items = valid?(user_input).tally
      valid_items.each { |order, quantity| cart_order[order] += quantity }
    else
      puts "Invalid order! Try again."
      take_input(cart_order)
    end
  end

  def valid?(input)
    valid_items = ProductList::Product.keys
    input.select { |i| valid_items.include?(i) }
  end
end
