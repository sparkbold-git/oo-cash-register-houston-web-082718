class CashRegister
  attr_accessor :total, :discount, :quant
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item =[]
    
  end
  
  def add_item(title,price,quant=1)
    @total +=price*quant
    @item << title

  end
  
  def apply_discount
      @total -= @total * @discount.to_f/100 if @discount.to_f > 0
  end
end
