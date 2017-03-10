require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/item_container"

class ItemBox
  include ItemContainer
end

describe ItemContainer do 
  before(:each) do 
  	@box = ItemBox.new
  end

  it "adds items into the container" do 
  	item1 =Item.new(name: "kettle",price: 200)
  	item2 =Item.new(name: "kettle",price: 300)
  	@box.add_item(item1)
  	@box.add_item(item2)
  	@box.items.should have(2).items
  end
end