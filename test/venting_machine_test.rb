require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vending_machine'

class VendingMachineTest < Minitest::Test
  def test_it_exists
    machine = VendingMachine.new("sam")

    assert_instance_of VendingMachine, machine
  end

  def test_it_has_inventory

    item1 = Item.new('name', 'description', 1.0)
    item2 = Item.new('name2', 'description2', 2.0)
    slot1 = Slot.new(item1, 5)
    slot2 = Slot.new(item2, 10)
    items = {a1: slot1, a2: slot2}
    machine = VendingMachine.new('machine1')

    machine.stock(items)
    assert_instance_of Hash, machine.inventory
    assert_equal slot1, machine.inventory[:a1]
    assert_equal slot2, machine.inventory[:a2]

    assert_equal item1, machine.inventory[:a1].item
    assert_equal 5, machine.inventory[:a1].count
  end

  def test_it_can_find_an_item
    item1 = Item.new('name', 'description', 1.0)
    item2 = Item.new('name2', 'description2', 2.0)
    slot1 = Slot.new(item1, 5)
    slot2 = Slot.new(item2, 10)
    items = {a1: slot1, a2: slot2}
    machine = VendingMachine.new('machine1')
    machine.stock(items)

    expected = {a2: slot2}
    assert_equal expected, machine.find_item('name2')
  end

  def test_it_doesnt_break_if_item_not_found
    item1 = Item.new('name', 'description', 1.0)
    item2 = Item.new('name2', 'description2', 2.0)
    slot1 = Slot.new(item1, 5)
    slot2 = Slot.new(item2, 10)
    items = {a1: slot1, a2: slot2}
    machine = VendingMachine.new('machine1')
    machine.stock(items)

    expected = {}
    assert_equal expected, machine.find_item('name3')

  end

  def test_find_is_case_insensitive
    item1 = Item.new('name', 'description', 1.0)
    item2 = Item.new('name2', 'description2', 2.0)
    slot1 = Slot.new(item1, 5)
    slot2 = Slot.new(item2, 10)
    items = {a1: slot1, a2: slot2}
    machine = VendingMachine.new('machine1')
    machine.stock(items)

    expected = {a2: slot2}
    assert_equal expected, machine.find_item('NaMe2')

  end
end
