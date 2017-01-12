class Cat


  def initialize(name, breed, weight)
    @name = name
    @breed = breed
    @weight = weight
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def weight
    @weight
  end

  def name=(name)
    @name = name
  end

  def weight=(weight)
    @weight = weight
  end

end

cat = Cat.new("Fluffy", "Persian", 4.5)
puts cat.breed
puts cat.weight
cat.breed = "Tabby"
puts cat.weight
