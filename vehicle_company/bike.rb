require "./motion.rb"

class Bike
  include Motion
  
  def ring_bell
    "Ring ring!"
  end
end