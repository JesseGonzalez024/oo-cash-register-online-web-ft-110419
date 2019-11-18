class CashRegister
  
  attr_accessor :total, :discount, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item (title, price, quantity = 1)
    @total += price * quantity
    title
  end
  def apply_discount
    if @discount == 0
      "No discount"
    else
      self.total -= (@discount * 0.01 * @total).to_i 
      "After the discount, the total comes to $#{self.total}."
    end
  end


end
