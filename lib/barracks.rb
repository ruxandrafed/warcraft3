class Barracks

  attr_accessor :food, :gold, :health_points
  attr_reader :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_train_footman?
    food < 2 || gold  < 135 ? false : true
  end

  def can_train_peasant?
    food < 5 || gold  < 90 ? false : true
  end

  def can_train_siegeengine?
    food < 3 || gold  < 200 || lumber < 60 ? false : true
  end

  def train_footman
    @gold -= 135
    @food -= 2
    Footman.new if can_train_footman?
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    Peasant.new if can_train_peasant?
  end

  def train_siegeengine
    @gold -= 200
    @food -= 3
    @lumber -= 60
    SiegeEngine.new if can_train_siegeengine?
  end

  def damage(enemy_attack_power)
    @health_points -= enemy_attack_power
  end

end
