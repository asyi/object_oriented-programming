class Rover
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction(instruction)
    if instruction == "r"
      turn_right
    elsif instruction == "l"
      turn_left
    elsif instruction == "m"
      move
    end
  end

  def move
    if @direction == "N" then @y += 1
    elsif @direction == "E" then @x += 1
    elsif @direction == "S" then @y -= 1
    elsif @direction == "W" then @x -= 1
    end
  end

  def turn_right
    if @direction == "N" then @direction = "E"
    elsif @direction == "E" then @direction = "S"
    elsif @direction == "S" then @direction = "W"
    elsif @direction == "W" then @direction = "N"
    end
  end

  def turn_left
    if @direction == "N" then @direction = "W"
    elsif @direction == "W" then @direction = "S"
    elsif @direction == "S" then @direction = "E"
    elsif @direction == "E" then @direction = "N"
    end
  end

  def report
    puts "I am at #{@x}, #{@y} and facing #{@direction}."
  end
end

##
rover1 = Rover.new(0,0,"N")
rover1.report
rover1.move
rover1.report
