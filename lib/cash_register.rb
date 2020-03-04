class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items < title
  end

  def apply_discount
    return "There is no discount to apply." if discount == nil
    @total = @total * (100 - discount) / 100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end
end
