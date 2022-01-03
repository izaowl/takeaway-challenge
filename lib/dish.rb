class Dish
  DEFAULT_NAME = "DEFAULT NAME".freeze
  DEFAULT_PRICE = 0
  attr_accessor :name, :price
  def initialize(name, price = 1)
    @name = name
    @price = price
  end
end
