class CashRegister
  
  attr_accessor :total, :discount, :title, :price 
  
  def initialize(discount = 0)
    @total = 0.00 
    @discount = discount 
  end 
  
  def add_item(title, price)
    @title = title
    @price = price 
    @total + price = @total 
  end 
  
  
end 