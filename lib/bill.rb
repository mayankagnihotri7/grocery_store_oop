require_relative "item"
require_relative "product_list"

class Bill
  attr_reader :total_amount, :saved_amount, :items

  def initialize(items)
    @items = items
  end

  def total_amount
    calculate_bill
    print_bill
  end

  def calculate_bill
    puts "Calculating bill. Please wait...\n\n"
    items.each {|item, quantity| Item.new(item, quantity).calculate_amount}
  end

  def print_bill
    total_price = 0
    saved = 0
    product = ProductList::Product
    puts "Items\t Quantity\t Price"
    puts "------------------------------"
    items.each do |item, quantity|
      puts "#{item.capitalize}\t #{quantity}\t \t#{Item.new(item, quantity).calculate_amount}"
      total_price += Item.new(item, quantity).calculate_amount
      saved += (product[item].price * quantity) - Item.new(item, quantity).calculate_amount
    end
    puts "Total Price: #{total_price.round(2)}"
    puts "You saved #{saved.round(2)} today."
  end
end
