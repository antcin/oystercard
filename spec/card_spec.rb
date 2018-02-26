require 'card'
describe Card do
  describe '#balance' do
    it 'should return a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end
end
