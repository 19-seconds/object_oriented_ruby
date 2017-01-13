class Cat

  attr_reader :name, :breed, :weight
  attr_writer :name, :weight  

  def initialize(hash)
    @name = hash[:name]
    @breed = hash[:breed]
    @weight = hash[:weight]
  end

end

