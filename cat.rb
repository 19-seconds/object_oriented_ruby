class Cat

  attr_reader :name, :breed, :weight
  attr_writer :name, :weight  

  def initialize(name, breed, weight)
    @name = name
    @breed = breed
    @weight = weight
  end

end

cat = Cat.new("Fluffy", "Persian", 4.5)
puts cat.breed
puts cat.weight
cat.name = "Chico"
puts cat.weight
