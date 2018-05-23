class Customer

  attr_accessor :name, :wallet, :drink

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drinks = []
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


end
