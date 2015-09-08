require_relative 'barracks'
require_relative 'unit'

class SiegeEngine < Unit

  attr_reader :attack_power

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def attack!(another_entity)
    another_entity.instance_of?(Barracks) ? another_entity.damage(@attack_power*2) : another_entity.damage(0)
  end

end
