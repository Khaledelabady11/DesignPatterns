# Strategy interface
class FlyBehavior
  def fly
    raise NotImplementedError, "This method must be implemented."
  end
end

# Concrete fly behaviors
class FlyWithWings < FlyBehavior
  def fly
    puts "I'm flying with wings!"
  end
end

class FlyNoWay < FlyBehavior
  def fly
    puts "I can't fly."
  end
end

# Duck class
class Duck
  attr_accessor :fly_behavior

  def initialize(fly_behavior)
    @fly_behavior = fly_behavior
  end

  def perform_fly
    fly_behavior.fly
  end

  def display
    raise NotImplementedError, "This method must be implemented."
  end
end

# Concrete duck types
class MallardDuck < Duck
  def initialize
    super(FlyWithWings.new) # Set the fly behavior
  end

  def display
    puts "I'm a Mallard duck."
  end
end

class RubberDuck < Duck
  def initialize
    super(FlyNoWay.new) # Set the fly behavior
  end

  def display
    puts "I'm a Rubber duck."
  end
end

# Usage
mallard = MallardDuck.new
mallard.display
mallard.perform_fly

rubber_duck = RubberDuck.new
rubber_duck.display
rubber_duck.perform_fly
