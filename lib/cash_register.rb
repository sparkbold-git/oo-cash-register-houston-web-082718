class CashRegister
  attr_accessor :total
  
  def initialize(total = 0)
    @total = total
    @cash_register_with_discount =discount
  end
  
  
end
