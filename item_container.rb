module ItemContainer
   
   
	def add_item(item)
   	@items.push item
   end

   def remove_item
   	 @items.pop
   end

   def validate
   	@items.each {|i| puts "Не указана цена" if i.price.nil?}
   end

   def delete_invalid_items
   	@items.delete_if {|i| i.price.nil?}
   end
end