#!/usr/bin/env ruby

class Shape
  def initialize
    raise NotImplementedError
  end

  def accept(visitor)
    raise NotImplementedError
  end
end

class Square < Shape
  attr_reader :side

  def initialize(side)
    @side = side
  end

  def accept(visitor)
    visitor.visitSquare(self)
  end
end

class Circle < Shape
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def accept(visitor)
    visitor.visitCircle(self)
  end
end

class Rectangle < Shape
  attr_reader :a
  attr_reader :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def accept(visitor)
    visitor.visitRectangle(self)
  end
end

class ShapeAreaVisitor
  def visitSquare(square)
    square.side * square.side
  end

  def visitCircle(circle)
    Math::PI * circle.radius * circle.radius
  end

  def visitRectangle(rectangle)
    rectangle.a * rectangle.b
  end
end

class ShapeCircumferenceVisitor
  def visitSquare(square)
    4 * square.side
  end

  def visitCircle(circle)
    2 * Math::PI * circle.radius
  end

  def visitRectangle(rectangle)
    2 * (rectangle.a + rectangle.b)
  end
end

square = Square.new(5)
circle = Circle.new(3)

shape_area_visitor = ShapeAreaVisitor.new
shape_circumference_visitor = ShapeCircumferenceVisitor.new

puts "square.accept(shape_area_visitor) = #{square.accept(shape_area_visitor)}"
puts "circle.accept(shape_area_visitor) = #{circle.accept(shape_area_visitor)}"
puts "square.accept(shape_circumference_visitor) = #{square.accept(shape_circumference_visitor)}"
puts "circle.accept(shape_circumference_visitor) = #{circle.accept(shape_circumference_visitor)}"
