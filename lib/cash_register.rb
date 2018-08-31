class CashRegister
  attr_accessor :total, :discount, :quant
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item =[]
    
  end
  
  def add_item(title,price,quant)
    !quant ? quant : quant = 1
    @total +=price*quant
    @item << title
  end
end
