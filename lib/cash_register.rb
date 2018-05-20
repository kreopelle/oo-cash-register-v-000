#create an object oriented cash Register
# add items with different quanities, prices
# calculate discounts
# keep track of what's been added
# void last transaction
# to call an instance method inside of another instance method, use self keyword

require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :price, :items 

  @@all = []

  def initialize(discount = nil)
    @discount = discount.to_f
    @total = 0
    save
  end

  def save
    @@all << self
  end

  def total
      @total
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @title = title
    @price = price
    @total = @total + (@price * @quantity)
  end

  def apply_discount
      if @discount == nil || @discount == 0.0
        "There is no discount to apply."
      else
        @total = @total - (@total * (@discount/100.0))
        "After the discount, the total comes to $#{@total.to_i}."
      end
  end

  def items
    
  end

  def void_last_transaction

  end

end
