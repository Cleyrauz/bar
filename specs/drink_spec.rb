require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Cosmo", 7, 3)
  end

  def test_drink_has_name
    assert_equal("Cosmo", @drink.name)
  end

  def test_drink_has_price
    assert_equal(7, @drink.price)
  end

end
