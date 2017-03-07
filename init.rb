require_relative "store_application"
puts StoreApplication.config do |app|
  
  app.name = "My Store"
  app.environment = :prodaction

  app.admin do |admin|
  	admin.email ="admin@mystore.com"
  	admin.login = "admin"
  	admin.send_info_emails_on :mondays
  end
end



@items = []
@items << AntiqueItem.new("bar",price: 101,weight: 100)

@items << RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})
@items << RealItem.new({:weight =>100,:price =>101, :name =>"pup"})

@items.each {|i| puts i.name}

cart = Cart.new("serg")
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})

method = "all_bars"
p cart.send(method)