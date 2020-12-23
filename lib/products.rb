class Products
  attr_reader :name, :price, :sale_quantity, :item_sale_price

  def initialize(name, price, quantity = nil, item_sale_price = nil)
    @name = name
    @price = price
    @sale_quantity = quantity
    @item_sale_price = item_sale_price
  end
end
