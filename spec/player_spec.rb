require 'player'

describe Player do
  it 'should return its own name' do
    player = Player.new('henry')
    expect(player.name).to eq 'henry'
  end
end