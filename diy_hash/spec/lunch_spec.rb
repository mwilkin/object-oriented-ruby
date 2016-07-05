require('rspec')
require('lunch')

describe(Lunch) do
  describe("#go_to_carts?") do

    it("returns recommendation to go to the carts or not when the user inputs a budget") do
    new_lunch = Lunch.new(7.50, nil)
    expect(new_lunch.go_to_carts?()).to(eq(true))
    end

    it("returns the name of a food cart based on the user input") do
      new_lunch = Lunch.new(7.50, "american")
      expect(new_lunch.cart_recommendation()).to(eq("Steaks Fifth Avenue"))
    end
  end
end
