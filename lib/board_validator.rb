module BoardValidator
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

  def vaidate_diagonals(board_state)

  end
end
