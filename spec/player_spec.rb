require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { 'Yohann' }
  
  
  context '#name' do
    it 'allows to return a name' do
      expect(player.name).to eq name
    end
  end
end