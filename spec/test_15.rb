require_relative 'spec_helper'

# Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks.
# It is however ineffective against other units (can't attack them, as though they were dead).
# So unlike with Footman (whose attacks do a fraction of the damage they normally would), the SiegeEngine does 2x the damage against the Barracks

# Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)

# Stats:

# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food

describe SiegeEngine do

  before :each do
      @siege_engine = SiegeEngine.new
  end

  describe "#attack!" do
    it "should do double of its attack power (AP) in damage to a barracks (6 instead of 3)" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(@siege_engine.attack_power*2)
      @siege_engine.attack!(enemy)
    end

    it "cannot attack other units that are not barracks (e.g. footmen)" do
      enemy = Footman.new
      expect(enemy).to receive(:damage).with(0)
      @siege_engine.attack!(enemy)
    end

  end

end

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#train_siegeengine" do

    it "costs 200 gold" do
      @barracks.train_siegeengine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.train_siegeengine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "costs 60 lumber" do
      @barracks.train_siegeengine
      expect(@barracks.lumber).to eq(440) # starts at 500
    end

    it "produces a siegeengine unit" do
      siegeengine = @barracks.train_siegeengine
      expect(siegeengine).to be_an_instance_of(SiegeEngine)
    end

  end

end

