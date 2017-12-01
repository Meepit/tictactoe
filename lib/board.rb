require_relative 'board_validator'

class Board
  include BoardValidator
  attr_reader :state
  def initialize
    @state = [['0', '1', '2'],['3', '4', '5'],['6', '7', '8']]
  end

  def place_piece(piece, position)
    # Ideally should validate tile
    row, column = get_row_rolumn(position)
    modify_state(piece, position)
  end

  def get_tile_state(position)
    ('012345678'.include? get_tile(position)) ? "empty" : get_tile(position)
  end

  def pretty_print_board
    # Are we testing this?
    puts "\n"
    3.times{|i| print(state[i].join(" "), "\n")}
  end

  private
  def get_row_rolumn(position)
    [position / 3, position % 3]
  end

  def modify_state(piece, position)
    row, column = get_row_rolumn(position)
    state[row][column] = piece
  end

  def get_tile(position)
    row, column = get_row_rolumn(position)
    state[row][column]
  end
end
