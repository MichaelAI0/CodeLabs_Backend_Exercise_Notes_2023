module Trait
  def eat
    puts "Eating"
  end
end

class Person
  include Trait
end

person = Person.new
person.eat