class Unit

  attr_reader :attack_power, :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(enemy_attack_power)
    @health_points -= enemy_attack_power
  end

  def attack!(another_entity)
    print "Unit is dead; cannot attack" if dead? || another_entity.dead?
    another_entity.damage(@attack_power)
end

  def dead?
    @health_points <= 0 ? true : false
  end

end


