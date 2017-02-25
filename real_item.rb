class RealItem < Item
  def initialize(options)
  	@weight = options[:weight]
  	super
  end
end