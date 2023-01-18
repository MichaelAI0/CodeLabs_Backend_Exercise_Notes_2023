class Rectangle
  def initialize
    @length
    @width
  end

  attr_accessor :length, :width

  def area
    @length * @width
  end

  def perimeter
    @width * 2 + @length * 2
  end
end

area = Rectangle.new
area.length = 2
area.width = 3
puts area.area
puts area.perimeter