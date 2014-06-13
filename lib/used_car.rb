require_relative 'car'

class UsedCar < Car

  DAMAGES = {
  scratched_paint: 500,
  missing_airbag: 200,
  missing_hubcaps: 350,
  cracked_mirror: 280
  }

  MILEAGE_DEPRECATION = 0.0001

  attr_reader :mileage

  def initialize(make, model, year, msrp, mileage, damages: 'none')
    super(make, model, year, msrp)

    @mileage = mileage
    @damages = damages
    @current_value = mileage_deprecation
    @price = price
  end

  def mileage_deprecation
    dep_percent = @mileage * MILEAGE_DEPRECATION
    multiplier = 1 - (dep_percent / 100)

    (@current_value * multiplier).round(2)
  end

end
