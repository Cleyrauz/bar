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
end
