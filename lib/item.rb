class Item
  attr_reader :item, :quantity

  def initialize(item, quantity)
    @item = item
    @quantity = quantity
    @amount = calculate_amount
  end

  def calculate_amount
    product = ProductList::Product[item]
    # puts products
    if discount?(item)
      # left_quantity = quantity % product.sale_quantity
      # final_price = (product.sale_quantity * product.item_sale_price) + (left_quantity * product.price)
      final_price = (quantity/product.sale_quantity)*(product.item_sale_price) + (quantity%product.sale_quantity) * (product.price)
    else
      final_price = product.price * quantity
    end
  end

  def discount?(item)
    product = ProductList::Product[item]
    !product.sale_quantity.nil?
  end
end
