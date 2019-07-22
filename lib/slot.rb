class Slot
  attr_reader :item, :count

  def initialize(item, count)
    @item = item
    @count = count
  end

  def restock(amount)
    if amount.is_a? Integer
      @count += amount
    end
  end

  def decrement
    @count -= 1
  end
end
