class CashRegister
  attr_accessor :total 
  
  def initialize(total, discount = 0)
    @total = total 
  end
end
