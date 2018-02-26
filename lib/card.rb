class Card
  LIMIT = 90
  attr_reader :balance
  attr_accessor :touch_in, :in_journey

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

  def touch_in?
    !@touch_in
  end

  def in_journey?
   !@in_journey
  end


end
