require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
describe Item do 

	before(:each) do 
	 @item = Item.new("kettle",price: 200)
	end
 
    before(:all) do 
	 
	end

	it "calculates price according to a special formula" do
	 expect(@item.price).to eq(222.0)
	 @item.price = 300
    end

    it "return info on object" do 
    expect(@item.to_s).to eq("kettle:222.0")
  end
end