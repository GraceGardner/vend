class VendingMachine
  attr_reader :name, :inventory, :deposited

  def initialize(name)
    @name = name
    @inventory = {}
    @deposited = 0
  end

  def stock(items)
    @inventory = items
  end

  def find_item(name)
    #search through inventory
    @inventory.each do |code, slot|
      if slot.item.name.downcase == name.downcase
        return {code => slot}
      end
    end
    {}
    #for each slot compare slots item name with given name
    #Return slot and key in mini hash
  end

  def restock(code, amount)
    @inventory[code].restock(amount)
  end

  def insert_money(amount)
    @deposited += amount
  end

  def purchase_item(code)
    slot = @inventory[code]
    if slot.count > 0 && @deposited >= slot.item.price
      perform_purchase(slot)
    else
       reject_purchase(slot)
    end

    #give change if needed
    #add money to bank
    #Reset amount of money inserted (move money to bank)


  end

  private

  def perform_purchase(slot)
    slot.decrement
    change = @deposited - slot.item.price
    @deposited = 0
    [slot.item, change]
  end

  def reject_purchase(slot)
    balance_due = slot.item.price - @deposited
  end
end
