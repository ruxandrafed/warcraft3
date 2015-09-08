# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'barracks'
require_relative 'unit'

class Footman < Unit

  attr_reader :attack_power
  attr_accessor :health_points

  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(another_entity)
    another_entity.instance_of?(Barracks) ? another_entity.damage((@attack_power/2).to_i) : another_entity.damage(@attack_power)
  end

end
