#create an object oriented cash Register
# add items with different quanities, prices
# calculate discounts
# keep track of what's been added
# void last transaction
# to call an instance method inside of another instance method, use self keyword

require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :price

  @@all = []

  def initialize(discount = 20)
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
      if @discount != nil
        @total = @total - (@total * (@discount/100.0))
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end 
  end

  def items

  end

  def void_last_transaction

  end

end
