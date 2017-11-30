class Board
  attr_reader :state
  def initialize
    @state = [['#', '#', '#'],['#', '#', '#'],['#', '#', '#']]
  end

  def place_piece(piece, position)
    row, column = get_row_rolumn(position)
    state[row][column] = piece
  end

  private

  def get_row_rolumn(position)
    [position / 3, position % 3]
  end
end
