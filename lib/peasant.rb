require_relative 'barracks'
require_relative 'unit'

class Peasant < Unit

  attr_reader :health_points

  def initialize
    @health_points = 35
  end

  def attack_power
    0
  end

end
