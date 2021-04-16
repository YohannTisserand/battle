require 'player'

describe Player do
  subject(:yohann) { described_class.new('Yohann') }
  subject(:abdur) { described_class.new('Abdur') }
  
  
  context '#name' do
    it 'allows to return a name' do
      expect(yohann.name).to eq 'Yohann'
    end
  end
end