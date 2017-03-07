require_relative "store_application"
 StoreApplication.config do |app|
  
  app.name = "My Store"
  app.environment = :prodaction

  app.admin do |admin|
  	admin.email ="s.kuznetzov@mail.ru"
  	admin.login = "admin"
  	admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new("bar",price: 101,weight: 100)

@items << RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})
@items << RealItem.new({:weight =>100,:price =>101, :name =>"pup"})

@items.each {|i| puts i.name}

cart = Cart.new("serg")
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"bar"})
cart.add_item RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})

order = Order.new
@items.each { |i| order.add_item(i)}
order.place