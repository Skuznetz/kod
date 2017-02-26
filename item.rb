class Item

	def self.discount
		if Time.now.month == 4
			0.3
		else
			0.1
		end
	end
  def initialize(options={})
  	@price = options[:price]
  	
  	@name = options[:name]
  end

  attr_reader :price,:name
  attr_writer :price
  
  def info
  	yield(price)
  	
  	yield(name)
  end

  def price
  	@price - @price*self.class.discount
  end
end