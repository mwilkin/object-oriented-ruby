require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(21, 2, 2)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it('returns true if it is a triangle with equal sides') do
      test_triangle = Triangle.new(4, 4, 4)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end
end
