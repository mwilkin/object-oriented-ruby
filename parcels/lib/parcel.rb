class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @volume = @length * @width * @height
  end

  define_method(:cost_to_ship) do
    cost_to_ship = @weight * 2
  end
end
