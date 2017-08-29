require_relative '../ship.rb'

RSpec.describe Ship do
  it "can be instantiated" do
    ship = described_class.new
    expect(ship).to be
  end

  context "when hit" do
    it "will update the hit counter" do
      ship = described_class.new([[1,2], [3,4]])
      ship.hit!([1,2])

      expect(ship.hit_counter).to eq(1)
      expect(ship.sunk).to_not be
    end

    it "will sink when its sunk " do
      ship = described_class.new([[1,2], [3,4]])
      ship.hit!([1,2])

      expect(ship.hit_counter).to eq(1)
      ship.hit!([3,4])

      expect(ship.hit_counter).to eq(2)
      expect(ship.sunk).to be
    end
  end
end
