class Cat

  attr_reader :name, :breed, :weight
  attr_writer :name, :weight  

  def initialize(hash)
    @name = hash[:name]
    @breed = hash[:breed]
    @weight = hash[:weight]
  end

end

cat = Cat.new({name: "Fluffy", breed: "Persian", weight: 4.5})
puts cat.breed
puts cat.weight
cat.name = "Chico"
puts cat.weight
