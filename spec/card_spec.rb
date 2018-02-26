require 'card'

describe Card do
  subject(:card) { described_class.new(90) }

  describe '#balance' do
    it 'should return a balance of 0' do
      expect(card.balance).to eq 0
    end
  end

  describe '#top_up' do
    it 'respond to top_up with one argument' do
      expect(card).to respond_to(:top_up).with(1).argument
    end
    it 'should top up the balance' do
      expect { card.top_up(1) }.to change { card.balance }.by 1
    end
    it 'raises an error when balance exceeds the maximum limit' do
      limit = Card::LIMIT
      card.top_up(limit)
      expect { card.top_up 1 }.to raise_error "Maximum limit of #{limit} reached"
    end
  end
end
