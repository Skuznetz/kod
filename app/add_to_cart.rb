require_relative "init"

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a| 
  @items.each {|i| cart.add_item(i) if a == i.name}
  
end
cart.read_from_file
begin
cart.save_to_file
rescue Cart::ItemNotSupported
	puts "Мы не можем добавлять виртуальный товар: #{Cart::UNSUPPORTED_ITEMS} в карзину"
end