class RealItem < Item

	attr_reader :weight

	show_info_about :weight, lambda {|attr| attr >5}
  def initialize(options)
  	@weight = options[:weight]
  	super(options[:name],options)
  end

  def info
  	yield(weight)
  	super
  end

  def to_s
  	super +":#{self.weight}"
  end

end