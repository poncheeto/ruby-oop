class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts "Woof!"
  end

  private

  def id
    @id_number = 12345
  end

end

###################################################################

class Person
  attr_accessor :name, :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end

###################################################################

module MyLibrary
  FAVE_BOOK = "Harry Potter"
end

puts Math::PI # scope resolution operator

require 'date'
puts Date.today

class Angle
  include Math # can simply use PI instead of Math::PI now
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

#################################################################

# Create your module here!
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

module ThePresent
  def now
    puts "It's #{Time.now.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min}
    #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

####################################################################

class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public

  def print_status
    puts "All systems go!"
  end

  private

  def password
    return 12345
  end

end

module Languages
  FAVE = "Ruby"
end

class Master
  include Languages

  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory

#######################################################################
# class Account
#   attr_reader :name, :balance
#   def initialize(name, balance=100)
#     @name = name
#     @balance = balance
#   end
  
#   def display_balance(pin_number)
#     puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
#   end
  
#   def withdraw(pin_number, amount)
#     if pin_number == pin
#       @balance -= amount
#       puts "Withdrew #{amount}. New balance: $#{@balance}."
#     else
#       puts pin_error
#     end
#   end
  
#   private
  
#   def pin
#     @pin = 1234
#   end
  
#   def pin_error
#     "Access denied: incorrect PIN."
#   end
# end

# my_account = Account.new("Eric", 1_000_000)
# my_account.withdraw(11, 500_000)
# my_account.display_balance(1234)
# my_account.withdraw(1234, 500_000)
# my_account.display_balance(1234)

class Account
  attr_reader :name, :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public

  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      (@balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}.")
    else
    (puts pin_error)
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    return "Access denied: incorrect PIN."
  end

end

checking_account = Account.new("Poncho", 2_000_000)
