require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/slot'

class SlotTest < Minitest::Test
  def test_it_exists
    item = Item.new('name', 'description', 1.0)
    slot = Slot.new(item, 5)

    assert_instance_of Slot, slot
  end

  def test_it_has_attributes
    item = Item.new('name', 'description', 1.0)
    slot = Slot.new(item, 5)

    assert_equal 5, slot.count
    assert_equal item, slot.item
  end
end
