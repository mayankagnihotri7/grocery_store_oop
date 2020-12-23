class Item
  attr_reader :item, :quantity

  def initialize(item, quantity)
    @item = item
    @quantity = quantity
  end

  def calculate_amount
    product = ProductList::Product[item]
    if discount?(item) && quantity >= product.sale_quantity
      left_quantity = quantity % product.sale_quantity
      final_price = (product.sale_quantity * product.item_sale_price) + (left_quantity * product.price)
    else
      final_price = product.price * quantity
    end
  end

  def discount?(item)
    product = ProductList::Product[item]
    !product.sale_quantity.nil?
  end
end
