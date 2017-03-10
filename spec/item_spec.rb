require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
describe Item do 

	before(:each) do 
	  @item = Item.new("kettle",price: 200)
	end

	it "calculates price according to a special formula" do
	 @item.price.should == 222.0
    end

    it "return info on object" do 
    @item.to_s.should == "kettle:222.0"
  end
end