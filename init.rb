require_relative "cart"
require_relative "item"

item1 = Item.new({:price =>10, :weight =>100, :name =>"bar"})

item2 = Item.new({:weight =>100, :name =>"bar"})
 
 cart = Cart.new
 cart.add_item item1
 cart.add_item item2
 p cart.items

 cart.delete_invalid_items

 p cart.items