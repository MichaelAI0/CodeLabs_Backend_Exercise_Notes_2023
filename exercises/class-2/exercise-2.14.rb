class Person
  @weight
  @height
  @name

  def initialize(weight, height, name)
    @weight = weight
    @height = height
    @name = name
  end

  attr_accessor :weight, :height, :name

  def eat(food)
    puts "Eating #{food}"
  end
end

class Doctor < Person

  def initialize()
    puts "I am a Doctor!"
  end
end

class Teacher < Person

  def initialize()
    puts "I am a Teacher!"
  end
end

class Engineer < Person

  def initialize()
    puts "I am a Engineer!"
  end
end

edward = Engineer.new()