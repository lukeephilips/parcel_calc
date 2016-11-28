require('pry')
require("rspec")
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(2, 2, 3, 1)
      expect(test_parcel.volume()).to eq (12)
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship of the parcel') do
      test_parcel = Parcel.new(2, 2, 3, 1)
      expect(test_parcel.cost_to_ship("express", 100).class).to eq(Fixnum)
    end
  end
end
