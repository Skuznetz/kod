require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
describe Item do 

	it "calculates price according to a special formula" do
	item = Item.new(price: 200, name: "kettle") 
	item.price.should ==nil
    end
end