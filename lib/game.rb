class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

<<<<<<< HEAD
# def attack(player)
#   player.receive_damage
#   end
=======
  def switch_turns
    @current_turn = opponent_of(current_turn)
  end
>>>>>>> 5b90031596cb1530850cd0978e445f57c543125c

  def opponent_of(player)
    players_who_are_not(player).first
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

<<<<<<< HEAD
def opponent_of(player)
  players_who_are_not(player).first
end
=======
  private

  attr_reader :players

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player}
  end
>>>>>>> 5b90031596cb1530850cd0978e445f57c543125c

def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end
end
