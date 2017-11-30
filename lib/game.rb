require_relative 'board'

class Game
  attr_reader :board
  def initialize(board = Board.new, player_1 = Player.new, player_2 = Player.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end
end
