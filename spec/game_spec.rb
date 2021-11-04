require 'game'
require 'player'

describe Game do
  
  let(:player_1) { double(:player, name: 'a')}
  let(:player_2) { double(:player, name: 'b')}
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end


  describe '#attack' do
  it 'reduces attacked players HP by 10' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
    #expect(player_2.health).to eq(50)
	end
end
end