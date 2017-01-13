require "./motion.rb"
require "./engine.rb"

class Car
  include Motion
  include Engine

  def honk_horn
    "Beeeeeeep!"
  end
end