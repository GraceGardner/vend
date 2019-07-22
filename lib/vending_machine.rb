class VendingMachine
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
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
end
