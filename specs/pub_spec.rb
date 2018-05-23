require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Alison Arms", 40)
    @drink1 = Drink.new("Cosmo", 7, 3)
    @drink2 = Drink.new("Beer", 7, 3)
    @drink3 = Drink.new("Rum", 7, 3)
    @customer = Customer.new("Angelina", 10, 25, 0)

  end

  def test_pub_has_name
    assert_equal("Alison Arms", @pub.name)
  end

  def test_pub_has_money
    assert_equal(40, @pub.till)
  end

  def test_drink_count
    assert_equal(0, @pub.get_drink_count())
  end

  def test_add_drink
    @pub.add_drink(@drink1)
    assert_equal(1, @pub.get_drink_count())
  end

  def test_add_money_to_till
    @pub.add_money_to_till(@drink1)
    assert_equal(47, @pub.till)
  end

  def test_customer_age
    assert_equal(true, @pub.check_age(@customer))
  end

  def test_refuse_service
    @customer.add_alcohol(@drink1.alcohol_level)
    @pub.refuse_service(@customer)
    assert_equal("Too Drunk", @pub.refuse_service(@customer))
  end

end
