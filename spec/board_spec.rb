require 'board'

describe Board do
  it 'should be initialized with an empty board state' do
    expect(subject.state).to eq [['#', '#', '#'],['#', '#', '#'],['#', '#', '#']]
  end
end
