class Card
  LIMIT = 90
  attr_reader :balance

  def initialize(limit = LIMIT)
    @balance = 0
    @limit = limit
  end

  def top_up(amount)
    raise "Maximum limit of #{LIMIT} reached" if amount + balance > LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end
end
