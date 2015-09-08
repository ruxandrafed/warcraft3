class Barracks

  attr_accessor :food, :gold

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    food < 2 || gold  < 135 ? false : true
  end

  def can_train_peasant?
    food < 5 || gold  < 90 ? false : true
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

end

b1 = Barracks.new

b1.food

puts b1.food
puts b1.can_train_footman?
