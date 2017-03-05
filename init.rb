require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "сart"
require_relative "order"


@items = []
@items << AntiqueItem.new({:price =>101,:weight =>100, :name =>"bar"})

@items << RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})
@items << RealItem.new({:weight =>100,:price =>101, :name =>"pup"})

cart = Cart.new("serg")
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})

puts @items[0].kind_of?(Item)
puts @items[0].kind_of?(AntiqueItem)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item