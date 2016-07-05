class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    !(@side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2)
  end
  
  define_method(:equilateral?) do
    @side1 == @side2 && @side2 == @side3
  end

  define_method(:isosceles?) do
    (@side1 == @side2) && @side1 != @side3 ||
    (@side2 == @side3) && @side2 != @side1 ||
    (@side3 == @side1) && @side3 != @side2
  end

  define_method(:scalene?) do
    @side1 != @side2 && @side2 != @side3 && @side1 != @side3
  end
end
