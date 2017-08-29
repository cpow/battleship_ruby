class Game
  attr_accessor :players, :current_player, :targeted_player, :current_turn

  def initialize(players = [])
    @players = players
    @current_turn = 0
    set_state
  end

  def hit!(coords)
    @targeted_player.hit!(coords)
  end

  def new_turn
    update_turn
    set_state
  end

  def set_state
    selectable_players = @players.dup
    @current_player = selectable_players.delete_at(@current_turn)
    @targeted_player = selectable_players.pop
  end

  def update_turn
    @current_turn.zero? ? @current_turn = 1 : @current_turn = 0
  end
end
