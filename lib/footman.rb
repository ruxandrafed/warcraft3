# http://classic.battle.net/war3/human/units/footman.shtml

class Unit

  attr_reader :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def attack!(another_footman)
    another_footman.damage(3)
  end

end

class Footman < Unit

  attr_reader :attack_power
  attr_accessor :health_points

  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(another_footman)
    another_footman.damage(10)
  end

end

class Peasant < Unit

  attr_reader :health_points

  def initialize
    @health_points = 35
  end

  def attack_power
    0
  end

end
