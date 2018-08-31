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
  
  def apply_discount(discount)
        @total = @total * discount if discount > 0
      end
end
