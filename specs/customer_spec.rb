require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Angelina", 10)
      @drink = Drink.new("Cosmo", 7)
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
    @customer.add_drinks_bought(@drink)
    assert_equal(1, @customer.get_drinks_bought)
  end


  def test_check_customer_wallet
    assert_equal(10, @customer.check_wallet)
  end

  def test_remove_money_from_wallet
    @customer.remove_money(@drink.price)
    assert_equal(3, @customer.check_wallet)
  end

end
