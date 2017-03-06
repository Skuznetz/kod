class StoreApplication
  class << self
	  def new
	  	puts "файлы загружаются"
	  	puts self.class
        require_relative "string"
        require_relative "item_container"
        require_relative "item"
        require_relative "virtual_item"
        require_relative "real_item"
        require_relative "antique_item"
        require_relative "сart"
        require_relative "order"
        @instance ||= self
       end
    end
end