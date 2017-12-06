class Player
  attr_reader :board
  attr_accessor :piece
  def initialize board
    @piece = 'O'
    @board = board
  end

  def set_piece(piece)
    self.piece = piece
  end

  def make_move location
    # Do we have to test this?
    board.place_piece(piece, location)
  end
end
