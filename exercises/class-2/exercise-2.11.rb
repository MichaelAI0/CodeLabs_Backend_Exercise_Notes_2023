class Animal
  def initialize
    @name
    @animal_type
    @color
  end

  attr_accessor :name, :animal_type, :color

  def intro
    "Hey, my name is #{@name}. I'm #{@color} and I am a #{@animal_type}"
  end
end

dog = Animal.new 
dog.name = "Clifford"
dog.color = "Red"
dog.animal_type = "Dog"

puts dog.name
puts dog.color
puts dog.animal_type

puts dog.intro