require_relative 'car'

class UsedCar < Car

  attr_reader :mileage

  def initialize(make, model, year, msrp, mileage: 0)
    super

    @mileage = mileage
  end

end
