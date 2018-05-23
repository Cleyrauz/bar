require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")
require_relative("../drink")
require_relative("../food")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Angelina", 10, 25, 0)
    @drink1 = Drink.new("Cosmo", 7, 3)
    @drink2 = Drink.new("Beer", 7, 3)
    @drink3 = Drink.new("Rum", 7, 3)
    @food = Food.new("Sweet Potato Fries", 5, 2)
  end

  def test_customer_has_name
    assert_equal("Angelina", @customer.name)
  end

  def test_customer_has_money
    assert_equal(10, @customer.wallet)
  end

  def test_drinks_bought
    assert_equal(0, @customer.get_drinks_bought())
  end

  def test_buy_drink
    @customer.add_drinks_bought(@drink1)
    assert_equal(1, @customer.get_drinks_bought)
  end


  def test_check_customer_wallet
    assert_equal(10, @customer.check_wallet)
  end

  def test_remove_money_from_wallet
    @customer.remove_money(@drink1.price)
    assert_equal(3, @customer.check_wallet)
  end

  def test_how_drunk
    assert_equal(0, @customer.check_drunk_level)
  end

  def test_drunk_level_increase
    @customer.add_alcohol(@drink1.alcohol_level)
    assert_equal(3, @customer.check_drunk_level)
  end

  def test_customer_afford_food
    # assert_equal(10, @customer.check_wallet)
    @customer.remove_cost_of_food(@food.price)
    assert_equal(5, @customer.check_wallet)
  end

  def test_customer_buys_food
    @customer.customer_bought_food(@food)
    assert_equal(1, @customer.customer_food.count)
  end

  def test_decrease_drunkness
    #add drink
    @customer.add_alcohol(@drink1.alcohol_level)
    #buy food
    @customer.customer_bought_food(@food)
    # remove rejuvenation level from drunk level
    @customer.decrease_drunk_from_rejen(@customer, @food)
    #return new drunk level
    assert_equal(1, @customer.drunkness)

  end


end
