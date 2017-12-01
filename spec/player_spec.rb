require 'player'

describe Player do
  let(:board) { double(:board) }
  subject(:player) { described_class.new(board) }
  it 'should have a default piece of O' do
    expect(subject.piece).to eq('O')
  end
end
