require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"

require_relative "../app/item_container"
require_relative "../app/cart"


describe Cart do 

	describe "managing items" do 
  it "adds items into the cart" do 
  	cart = Cart.new("serg")
  	item1 = Item.new("kettle",price: 200)
  	item2 = Item.new("bar",price: 200)
  	cart.add_items(item1,item2)
  	expect(cart.items).to include(item1,item2)
  end

  it "проверяем удаление товара"
end
  it "учет добавленных товаров"
  it "оформление заказа"
  it "самоочищение корзины"

end