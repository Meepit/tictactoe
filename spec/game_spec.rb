require 'game'

describe Game do
  let(:player) { double(:player, set_piece: "X") }
  let(:board) { double(:board) }
  subject(:game) { described_class.new board = board, player_1 = player, player_2 = player }
  it 'should decide a players piece' do
    expect(subject.decide_first).to eq("Player 1 goes first").or(eq("Player 2 goes first"))
  end
end
