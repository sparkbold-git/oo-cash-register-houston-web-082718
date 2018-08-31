class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
    @price =[]
  end
  
  def add_item(title,price,quant=1)
    @total +=price*quant
    quant.times {@items << title}
    @price << price

  end
  
  def apply_discount
      if discount.to_f > 0
        @total -= @total * discount.to_f/100 
        "After the discount, the total comes to $#{total.to_i}."
      else
        "There is no discount to apply."
      end
  end
  
  def void_last_transaction
    @items.pop
    @total -= @price.last
  end
end
