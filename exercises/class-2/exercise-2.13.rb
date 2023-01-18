class Person
  @@people = []

  def initialize(name, age)
    @name = name
    @age = age
    @@people.push({
      name: name,
      age: age
    })
  end

  attr_accessor :name, :age, :people

  def print_all_people
    @@people.each do |person|
      puts "Name: #{person[:name]}, Age: #{person[:age]}"
    end
  end

  
end

person_1 =  Person.new("Joe", 34)

person_2 =  Person.new("Jack", 29)

person_2.print_all_people