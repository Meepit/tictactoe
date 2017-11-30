require 'board'

describe Board do
  it 'should be initialized with an empty board state' do
    expect(subject.state).to eq [['#', '#', '#'],['#', '#', '#'],['#', '#', '#']]
  end
  it 'should change the first tile to an X' do
    subject.place_piece('X', 0)
    expect(subject.state).to eq [['X', '#', '#'],['#', '#', '#'],['#', '#', '#']]
  end
end
