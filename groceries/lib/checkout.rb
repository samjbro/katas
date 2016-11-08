class Checkout
  attr_reader :basket

  RULES = {
    "A" => [50, 3, 20],
    "B" => [30, 2, 15],
    "C" => [20],
    "D" => [15]
  }

  def initialize(rules = RULES)
    @rules = rules
    @basket = []
  end


  def scan(item)
    basket << item
  end

  def total
    balance = 0
    basket.each do |item|
      balance += rules[item][0]
    end
    apply_discounts(balance)
  end

  private

  def apply_discounts(balance)
    rules.each do |item, pricing|
      next unless pricing[1] && pricing[2]
      balance -= pricing[2] * (basket.count(item) / pricing[1])
    end
    balance
  end

  attr_reader :rules
end
