class Cat

  # attr_accessor :name, :preferred_food, :meal_time

    def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time

      def meow
        puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
        self
      end

    def eats_at
      if @meal_time > 12
        return "#{@meal_time - 12}" + "PM"
      else
        return @meal_time.to_s + "AM"
      end
    endr
  end
end

crookshanks = Cat.new("Crookshanks", "fish", 14).meow

kitty = Cat.new("Kitty", "cake", 6).meow
