require "minitest/autorun"
require "minitest/pride"
require "./lib/item"

class ItemTest < Minitest::Test
  def test_it_exists
    item = Item.new('name', 'description', 1.0, :a1, 5)

    assert_instance_of Item, item
  end

  def test_it_has_attributes
    sandwich = Item.new('name', 'description', 1.0, :a1, 5)

    assert_equal 'name', sandwich.name
    assert_equal 'description', sandwich.description
    assert_equal 1.0, sandwich.price
    assert_equal :a1, sandwich.code
    assert_equal 5, sandwich.count
  end
end
