class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end
  define_method(:volume) do
    @length * @width * @height
  end
  define_method(:cost_to_ship) do |speed, distance|
    # X Formula: volume < 30, fixed($5). After that, scaled
    # X make a hash for delivery methods with cost multipliers
    # X add $1 per pound
    # local (<100 miles), regional, long distance, flat fee
    # local and standard have no additional fees

    shipping_speed = {'standard' => 0, 'express' => 10}
    if volume < 30
      base_cost = 5 + @weight
    else
      base_cost = 5 + @weight + volume * 0.2
    end
    additional_fees = shipping_speed[speed]

    base_cost + additional_fees
  end
end
