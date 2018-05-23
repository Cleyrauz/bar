require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Cosmo", 7, 3)
    @drink2 = Drink.new("Beer", 7, 3)
    @drink3 = Drink.new("Rum", 7, 3)
  end

  def test_drink_has_name
    assert_equal("Cosmo", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(7, @drink1.price)
  end

end
