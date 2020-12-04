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
  attr_reader :name
  attr_writer :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end