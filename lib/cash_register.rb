#create an object oriented cash Register
# add items with different quanities, prices
# calculate discounts
# keep track of what's been added
# void last transaction
# to call an instance method inside of another instance method, use self keyword

class CashRegister
  attr_accessor :total, :discount, :item, :quantity, :price

  @@all = []

  def initialize(discount = 20)
    @discount = discount
    @total = 0
    save
  end

  def save
    @@all << self
  end

  def total
      @total
  end

  def add_item

  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end

end
