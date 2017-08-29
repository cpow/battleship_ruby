require_relative '../user.rb'

RSpec.describe User do
  it "should instantiate ok" do
    user = described_class.new
    expect(user).to be
  end

  it "should be able to have ships" do
    ships = [double("ship"), double("ship2")]
    user = described_class.new(ships)
    expect(user.ships.length).to eq(2)
  end

  it "should call hit on all ships" do
    ship2 = double("ship")
    ship1 = double("ship")
    ships = [ship1, ship2]
    coords = [1,2]
    user = described_class.new(ships)

    expect(ship2).to receive(:hit!).with(coords)
    expect(ship1).to receive(:hit!).with(coords)
    user.hit!(coords)
  end
end
