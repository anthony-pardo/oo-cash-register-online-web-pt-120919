class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    i = 0 
    while i < quantity do
      @items << title
      i += 1
    end
  end
  
  def apply_discount 
    @total = @total - @total*(discount*1.0)/100
    if discount == 0 
      return "There is no discount to apply."
    else 
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items 
    @items
  end
end
