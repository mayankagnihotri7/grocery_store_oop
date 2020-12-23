require_relative "products"

class ProductList
  Product = {
    "milk" => Products.new("milk", 3.97, 2, 2.5),
    "bread" => Products.new("bread", 2.17, 3, 2.00),
    "banana" => Products.new("banana", 0.99, 0, 0),
    "apple" => Products.new("apple", 0.89, 0, 0),
  }
end
