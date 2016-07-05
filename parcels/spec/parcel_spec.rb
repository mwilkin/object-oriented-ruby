require('rspec')
require('parcel')

describe(Parcel) do
  describe("#parcel") do
    it("returns the volume on a package") do
      test_package = Parcel.new(4, 10, 2, 1)
      expect(test_package.volume()).to(eq(80))
    end

    it("returns a cost to ship a package based on volume and weight") do
      test_package = Parcel.new(4, 4, 4, 10)
      expect(test_package.cost_to_ship()).to(eq(20))
    end
  end
end
