require("minitest/autorun")
require("minitest/rg")

require_relative("../food")
require_relative("../customer")

class FoodTest < MiniTest::Test

  def setup
    @food = Food.new("Sweet Potato Fries", 5, 2)
    @customer = Customer.new("Angelina", 10, 25, 0)
  end

  def test_food_has_name
    assert_equal("Sweet Potato Fries", @food.name)
  end

  def test_food_has_price
    assert_equal(5, @food.price)
  end

  def test_food_has_rejuv_level
    assert_equal(2, @food.rejuvenation_level)
  end

end
