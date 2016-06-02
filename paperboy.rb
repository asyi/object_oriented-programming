class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  def initialize(name, side)
      @name = name
      @quota = 50
      @experience = 0
      @side = side
      @earnings = 0
  end

  def quota
    @quota = 50 + ((@experience/2).to_i)
  end

  def deliver(start, finish)
    deliveries = (finish - start)/2
    @experience = @experience + deliveries
    @earnings = @earnings + deliveries * 0.25.to_f
    if deliveries > quota
      @earnings = @earnings + (deliveries - @quota) * 0.25.to_f
    elsif deliveries < quota
      @earnings = @earnings - 2.to_f
    end
  end

  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end
end

tommy = Paperboy.new("Tommy", "even")
tommy.quota # => 50
tommy.deliver(100, 220) # => 17.5
tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.50 so far!"

tommy.quota # => 80
tommy.deliver(1, 150) # => 16.75
tommy.earnings #=> 34.25

puts tommy.report
