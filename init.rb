require_relative "cart"
require_relative "item"

item = Item.new({:price =>10, :weight =>100, :name =>"bar"})
item.info {|attr| puts attr}