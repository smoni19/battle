require 'game'
require 'player'

describe Game do
  let(:game) { Game.new }
  let(:player_1) { double(:player, name: 'a')}
  let(:player_2) { double(:player, name: 'b')}

  describe '#attack' do
  it 'reduces attacked players HP by 10' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
    #expect(player_2.health).to eq(50)
	end
end
end