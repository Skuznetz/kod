require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/real_item"

describe RealItem do 
  it " ++++" do 
  	item1 = RealItem.new(name: "kettle",price: 200, weight: 2)
  	item2 = RealItem.new(name: "kettle",price: 200, weight: 10)
  	item1_info = []
  	item2_info = []
  	item1.info {|attr| item1_info << attr }
  	item2.info {|attr| item2_info << attr }
  	p item1_info.join(",")
  	p item2_info.join(",")
  end
end