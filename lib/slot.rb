class Slot
  attr_reader :item, :count
  
  def initialize(item, count)
    @item = item
    @count = count
  end
end
