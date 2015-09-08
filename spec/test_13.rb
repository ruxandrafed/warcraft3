require_relative 'spec_helper'

# A dead unit cannot attack another unit.
# Conversely, an alive unit will also not attack another unit that is already dead.

describe Unit do

  before :each do
    @unit = Unit.new(10) # unit starts with 10 HP
    @other_unit = Unit.new(20)
  end

  describe "#attack!" do
    it "unit should not be able to attack if dead; should say: Unit is dead; cannot initiate attack" do
      @unit.damage(10) # unit takes damage and dies
      expect {@unit.attack!(@other_unit)}.to output('Unit is dead; cannot attack').to_stdout
    end

    it "an alive unit should not attack a unit that is already dead" do
      @unit.damage(10) # unit takes damage and dies
      expect {@other_unit.attack!(@unit)}.to output('Unit is dead; cannot attack').to_stdout
    end

  end

end
