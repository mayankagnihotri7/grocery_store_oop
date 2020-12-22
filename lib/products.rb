class Products
  attr_reader :name, :price, :quantity, :item_sale_price

  def initialize(name, price, quantity, item_sale_price)
    @name = name
    @price = price
    @quantity = quantity
    @item_sale_price = item_sale_price
  end
end
