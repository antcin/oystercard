class Card
  LIMIT = 90
  MINIMUM_BALANCE = 1
  attr_reader :balance

  def initialize(limit = LIMIT)
    @balance = 0
    @limit = limit
    @touch = false
  end

  def top_up(amount)
    raise "Maximum limit of #{LIMIT} reached" if amount + balance > LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    raise "Cannot touch in. Minimum balance of #{MINIMUM_BALANCE} not reached." if @balance < MINIMUM_BALANCE
    @touch = true
  end

  def touch_out
    @touch = false
  end

  def in_journey?
    @touch
  end
end
