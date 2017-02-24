class Cart
  attr_reader :items
   def initialize
     items = Array.new 
   end

   def add_item(item)
   	@item.push item
   end

   def remove_item
   	 @item.pop
   end
end