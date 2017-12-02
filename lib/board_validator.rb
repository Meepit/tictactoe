module BoardValidator

  def perform_validation(board_state)
    validate_rows(board_state) && validate_columns(board_state) && validate_diagonals(board_state)
  end

  private
  def validate_rows(board_state)
    !board_state.map{|row| row.join("") != ('XXX' || 'OOO')}.include? false
  end

  def validate_columns(board_state)
    flag = true
    for col in 0..2 do
      column = ""
      for row in 0..2 do
        column += board_state[row][col]
      end
      return false if column == ('XXX' || 'OOO')
    end
    flag
  end

  def validate_diagonals(board_state)
    diagonal_1, diagonal_2 = "", ""
    3.times do |i|
      diagonal_1 += board_state[i][i]
      diagonal_2 += board_state[i][2-i]
    end
    diagonal_1 != ('XXX' || 'OOO') && diagonal_2 != ('XXX' || 'OOO')
  end
end
