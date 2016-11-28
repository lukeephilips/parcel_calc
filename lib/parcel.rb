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
  define_method(:cost_to_ship) do |method, distance|
    # Formula: volume < 30, fixed($5). After that, scaled
    # make a hash for delivery methods with cost multipliers
    # add $1 per pound
    # local (<100 miles), regional, long distance, flat fee
    # local and standard have no additional fees
    if volume < 30
      base_cost = 5 + @weight
    else
      base_cost = 5 + @weight + volume * 0.2
    end
    additional_fees = 0

    base_cost + additional_fees
  end
end
