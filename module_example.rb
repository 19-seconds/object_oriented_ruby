module Engine

  def start_engine
    puts "vmmmmmmmm"
  end

end


module Motion

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end


class Car
  include Motion
  include Engine

  def honk_horn
    "Beeeeeeep!"
  end
end

class Bike
  include Motion
  
  def ring_bell
    "Ring ring!"
  end
end


car = Car.new
bike = Bike.new
puts bike.ring_bell
puts car.honk_horn
car.start_engine