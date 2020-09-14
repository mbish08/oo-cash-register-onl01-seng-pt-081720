class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity, :items
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @title = title
    @price = price 
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
  end 
end 
  
  def apply_discount
    if @discount > 0 
      discount_off = (@price * @discount)/100 
      @total -= discount_off
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    if @items.length > 0 
      @items.pop
      @total 
    else 
      @total = 0 
    end 
  end 
  
end 