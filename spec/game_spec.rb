require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  context '#player_1' do
    it 'allows to create a player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  context '#player_2' do
    it 'allows to create a player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  context '#attack' do
    it 'allows to damage the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'starts at player_1' do
      expect(game.current_turn).to eq player_1
    end
  end

  context '#switch_turn' do
    it 'switches turns' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end
end