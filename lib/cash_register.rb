class CashRegister
  attr_accessor :total, :discount, :quant
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item =[]
    
  end
  
  def add_item(title,price,quant=1)
    total +=price*quant
    @item << title

  end
  
  def apply_discount
      if discount.to_f > 0
        total -= total * discount.to_f/100 
        puts "After the discount, the total comes to #{total}."
  end
end
