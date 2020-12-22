require_relative "products"

class ProductList
  def product_info
    Products.new("milk", 3.97, 2, 2.5)
    Products.new("bread", 2.17, 3, 2.00)
    Products.new("banana", 0.99, 0, 0)
    Products.new("apple", 0.89, 0, 0)
  end
end
