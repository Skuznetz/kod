class Duck
  def quack
  	puts "quack quack"
  end
  def self.quack
    puts "Class quack"
end
end

duck1 = Duck.new
duck1.quack
Duck.quack