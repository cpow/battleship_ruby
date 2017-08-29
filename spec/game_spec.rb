require_relative '../game.rb'
require 'pry'

RSpec.describe Game do
  it "can instantiate with players" do
    players = [1,2]
    game = described_class.new(players)
    expect(game).to be
    expect(game.players).to eq(players)
    expect(game.current_player).to eq(1)
    expect(game.targeted_player).to eq(2)
    expect(game.current_turn).to eq(0)
  end

  describe "#new_turn" do
    it "will select a new player and reset the state" do
      players = [1,2]
      game = described_class.new(players)
      game.new_turn

      expect(game.current_player).to eq(2)
      expect(game.targeted_player).to eq(1)
      expect(game.current_turn).to eq(1)

      game.new_turn

      expect(game.current_player).to eq(1)
      expect(game.targeted_player).to eq(2)
      expect(game.current_turn).to eq(0)
    end
  end
end
