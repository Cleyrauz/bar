class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def get_drink_count
    return @drinks.length
  end

  def add_drink(drink)
    @drinks << drink
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
    if customer.drunkness >= 5
      return "Too Drunk"
    else
      return "Order another drink"
    end
  end

end
