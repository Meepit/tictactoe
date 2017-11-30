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
end
