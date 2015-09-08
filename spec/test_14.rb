require_relative 'spec_helper'

# Aside from gold and food, there is also the concept of lumber.
# Add lumber as a resource that the barracks can handle.
# A Barracks can start off with 500 lumber.

describe Barracks do

  describe "#lumber" do
    before :each do
      @barrack = Barracks.new
    end
    it "can be retrieved (read) and it's 500" do
      expect(@barrack.lumber).to eq(500)
    end
end

end
