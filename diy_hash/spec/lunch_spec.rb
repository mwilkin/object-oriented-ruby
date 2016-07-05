require('rspec')
require('lunch')

describe(Lunch) do
  describe("#triangle") do
  it("returns recommendation to go to the carts or not when the user inputs a budget") do
    new_lunch = Lunch.new(7.50)
    expect(new_lunch.food_cart?()).to(eq(true))
  end

end
