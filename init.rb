require_relative "item_container"
require_relative "сart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

item1 = VirtualItem.new({:price =>101, :weight =>100, :name =>"bar"})

item2 = RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
item3 = RealItem.new({:weight =>100,:price =>99, :name =>"pup"})
 cart = Cart.new
 cart.add_item item1
 cart.add_item item2
 cart.add_item item3

 puts cart.size