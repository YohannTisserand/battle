require 'player'

describe Player do
  subject(:yohann) { Player.new('Yohann') }
  subject(:abdur) { Player.new('Abdur') }
  
  
  context '#name' do
    it 'allows to return a name' do
      expect(yohann.name).to eq 'Yohann'
    end
  end

  context '#hp' do
    it 'allows to returns the hp' do
      expect(yohann.hit_points).to eq described_class::BASE_HP
    end
  end

  context '#receive_damage' do
    it 'allows to reduce players hp' do
      expect { yohann.receive_damage }.to change { yohann.hit_points }.by(-10)
    end
  end
end