class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && a == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate
    if [a, b, c].any? { |i| i <= 0 }
      raise TriangleError
    end
    if b + c <= a || a + c <= b || a + b <= c
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    message = ""
  end
end
