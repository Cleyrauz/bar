class Customer

  attr_accessor :name, :wallet, :drink, :age, :drunkness, :customer_food

  def initialize(name, wallet, age, drunkness)
    @name = name
    @wallet = wallet
    @drinks = []
    @age = age
    @drunkness = 0
    @customer_food = []
  end

  def get_drinks_bought
    return @drinks.length
  end

  def add_drinks_bought(drink)
    @drinks << drink
  end

  def check_wallet
    return @wallet
  end

  def remove_money(price)
    @wallet -= price
  end

  def check_drunk_level
    return @drunkness
  end

  def add_alcohol(drink)
    @drunkness += drink
  end

  def remove_cost_of_food(price)
    @wallet -= price
  end

  def customer_bought_food(food)
    @customer_food << food
  end

  def decrease_drunk_from_rejen(customer, food)
    customer.drunkness -= food.rejuvenation_level
    return drunkness
  end


end
