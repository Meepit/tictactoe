require 'board'

describe Board do
  it 'should be initialized with an empty board state' do
    expect(subject.state).to eq [['0', '1', '2'],['3', '4', '5'],['6', '7', '8']]
  end
  it 'should change the first tile to an X' do
    subject.place_piece('X', 0)
    expect(subject.state).to eq [['X', '1', '2'],['3', '4', '5'],['6', '7', '8']]
  end
  it 'should return empty when getting empty tile' do
    expect(subject.get_tile_state(3)).to eq "empty"
  end
  it 'should return X when getting X marked tile' do
    subject.place_piece('X', 4)
    expect(subject.get_tile_state(4)).to eq "X"
  end
  it 'should raise error when placing piece on an invalid square' do
    subject.place_piece('X', 4)
    expect { subject.place_piece('X', 4) }.to raise_error("Invalid move, already a piece there")
  end

  describe 'BoardValidator' do
    it 'should return true when rows are valid' do
      expect(subject.perform_validation(subject.state)).to eq(true)
    end
    it 'should return false when game is over due to won row' do
      board_state = [['0', '1', '2'],['X', 'X', 'X'],['6', '7', '8']]
      expect(subject.perform_validation(board_state)).to eq(false)
    end
    it 'should return true when all columns are valid' do
      expect(subject.perform_validation(subject.state)).to eq(true)
    end
    it 'should return false when all a game is over due to won column' do
      board_state = [['0', 'X', '2'],['3', 'X', '5'],['6', 'X', '8']]
      expect(subject.perform_validation(board_state)).to eq(false)
    end
    it 'should return true when all diagonals are valid' do
      expect(subject.perform_validation(subject.state)).to eq(true)
    end
    it 'should return false when a game is over due to won diagonal' do
      board_state = [['X', '1', '2'],['3', 'X', '5'],['6', '7', 'X']]
      expect(subject.perform_validation(board_state)).to eq(false)
    end
  end
end
