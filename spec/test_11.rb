require_relative 'spec_helper'

# In most strategy games, like Warcraft III, buildings can also be attacked by units.
# Since a barracks is a building, it has substantial more HP (500)
# To make matters worse, a Footman does only HALF of its AP as damage to a Barracks.
# This is because they are quite ineffective against buildings.
# Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  describe "#health_points" do
    before :each do
      @barrack = Barracks.new
    end
    it "can be retrieved (read) and it's 500" do
      expect(@barrack.health_points).to eq(500)
    end
end

end

describe Footman do

    before :each do
      @footman = Footman.new
    end

  describe "#attack!" do
    it "should do half of its attack power (AP) in damage to a barracks (5 instead of 10)" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(5)
      @footman.attack!(enemy)
    end
  end

end
