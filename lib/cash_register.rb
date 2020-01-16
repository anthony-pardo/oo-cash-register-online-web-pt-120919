class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total, discount = 0)
    @total = total
    @discount = discount
  end
end
