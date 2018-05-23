class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = {}
  end

  def get_drink_count
    return @drinks.values.sum
  end

  def add_drink(drink, quantity)
    @drinks[drink] = quantity
  end

  def remove_drink_from_stock(drink)
    # @stock.drink -= drink
    @drinks[drink] -= 1
  end

  def stock_value(drink, quantity)
    value = drink.price * quantity
  end

  def add_money_to_till(drink)
    @till += drink.price
  end

  def check_age(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end

  def refuse_service(customer)
    if customer.drunkness >= 2
      return "Too Drunk"
    else
      return "Order another drink"
    end
  end

end
