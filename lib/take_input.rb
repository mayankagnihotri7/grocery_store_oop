
class TakeInput

  def take_input(cart_order)
    puts "Please enter all the items purchased separated by a comma"

    user_input = gets.chomp.downcase.gsub(/\s+/, "").split(",")

    if valid?(user_input)
      user_input.each { |order|  cart_order[order] += 1}
    else
      puts "Invalid order! Try again."
      take_input(cart_order)
    end
  end

  def valid?(input)
    input.length >= 1
  end
end
