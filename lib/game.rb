require_relative 'board'
require_relative 'player'

class Game
  attr_reader :board, :player_1, :player_2
  def initialize(board = Board.new, player_1 = Player.new(board), player_2 = Player.new(board))
    @board = board
    @player_1 = player_1
    @player_2 = player_2
    @num_moves = 0 # When this reaches 9 and board is valid then its a draw.
  end

  def decide_first
   # assuming X goes first
   rand_num = rand(1..2)
   rand_num == 1 ? player_1.set_piece("X") : player_2.set_piece("X")
   "Player #{rand_num} goes first"
  end

  def get_player_move(player)
    # How are we testing this?
    location = gets.chomp.to_i
    begin
      board.place_piece(player.piece, location)
    rescue RuntimeError
      "Invalid move"
    end
  end
end
