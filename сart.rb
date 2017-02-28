class Cart

	attr_reader :items

	include ItemContainer
    
   def initialize(owner)
     @items = Array.new 
     @owner = owner
   end
   
   def save_to_file
   end

   def read_from_file
   end
   
end