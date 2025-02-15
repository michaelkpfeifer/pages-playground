#!/usr/bin/env ruby

class Shape
  def initialize
    raise NotImplementedError
  end
end

class Square < Shape
  def initialize(side)
    @side = side
  end

  def area
    @side * @side
  end

  def circumference
    4 * @side
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius * @radius
  end

  def circumference
    2 * Math::PI * @radius
  end
end

class Rectangle < Shape
  def initialize(a, b)
    @a = a
    @b = b
  end

  def area
    @a * @b
  end

  def circumference
    2 * (@a + @b)
  end
end

square = Square.new(5)
circle = Circle.new(3)
rectangle = Rectangle.new(4, 6)

puts "square.area = #{square.area}"
puts "circle.area = #{circle.area}"
puts "rectangle.area = #{rectangle.area}"

puts "square.circumference = #{square.circumference}"
puts "circle.circumference = #{circle.circumference}"
puts "rectangle.circumference = #{rectangle.circumference}"
