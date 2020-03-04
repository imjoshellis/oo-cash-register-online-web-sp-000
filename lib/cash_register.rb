class CashRegister
  attr_accessor :total

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount
    return "There is no discount to apply." if discount = nil
    @total = @total * (100 - discount) / 100
    return "After the discount, the total comes to $#{@total}."
  end
end
