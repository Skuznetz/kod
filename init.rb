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



@items = []
@items << AntiqueItem.new("bar",price: 101,weight: 100)

@items << RealItem.new({:weight =>100,:price =>101,:name =>"kettle"})
@items << RealItem.new({:weight =>100,:price =>101, :name =>"pup"})

order = Order.new
order.placed