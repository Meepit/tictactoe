class Player
  attr_reader :piece, :board
  def initialize board
    @piece = 'O'
    @board = board
  end

  def make_move location
    # Do we have to test this?
    board.place_piece(piece, location)
  end
end
