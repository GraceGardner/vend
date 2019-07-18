class Item
  attr_reader :name, :description, :price, :code, :count
  def initialize(name, description, price, code, count)
    @name = name
    @description = description
    @price = price
    @code = code
    @count = count 
  end
end
