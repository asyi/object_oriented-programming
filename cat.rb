class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
end

crookshanks = Cat.new("Crookshanks", "fish", 14)
kitty = Cat.new("Kitty", "cake", 6)
cookie = Cat.new("Cookie", "cream", 9)

puts cookie.inspect
