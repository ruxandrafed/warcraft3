require_relative 'spec_helper'

# Units start off alive but they die if their HP hits 0 or lower.
# This is usually a result of receiving damage from combat.
# Implementation: Define a method dead? on the Unit class.
# We add it to Unit instead of Footman for example b/c all units can die, not just footman or peasants.

describe Unit do

  before :each do
    @unit = Unit.new(10, 3) # unit starts with 10 HP
  end

  describe "#dead?" do
    it "unit should be dead after taking more damage than their existing HP" do
      @unit.damage(10)
      expect(@unit.dead?).to eq(true)
    end
  end

end

describe Footman do

  before :each do
    @footman = Footman.new # footmans starts with 60 HP
  end

  describe "#dead?" do
    it "footman should be dead after taking more damage than their existing HP" do
      @footman.damage(65)
      expect(@footman.dead?).to eq(true)
    end
  end

end
