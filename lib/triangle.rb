class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if (a <= 0 || b <= 0 || c <= 0)# || (a + b >= c)
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   error.message
      # end
    elsif (a + c <= b) || (a + b <= c) || (b + c <= a)
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif (a == b && b != c) || (a == c && c != b) || (b == c && c != a)
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  # def message
  #   puts "You failed."
  # end
end
