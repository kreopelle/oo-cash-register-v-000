#create an object oriented cash Register
# add items with different quanities, prices
# calculate discounts
# keep track of what's been added
# void last transaction
# to call an instance method inside of another instance method, use self keyword

class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(employee_discount = 20)
    @employee_discount = employee_discount
    @total = 0
  end

  def discount
    @total = @total - (@total * @employee_discount)
  end

  def total

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
