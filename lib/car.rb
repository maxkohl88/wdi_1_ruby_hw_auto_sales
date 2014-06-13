require 'date'

class Car
include CarModule

  attr_reader :make, :model, :year, :msrp, :price

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @current_value = current_value
    @price = price
  end

  def current_value

    lifespan = Date.today.year - @year
    initial_price = @msrp

    until lifespan == 0
      initial_price = initial_price * CarModule::ANNUAL_DEPRECATION
      lifespan -= 1
    end

    initial_price.round(2)
  end

  def price
    (@current_value * CarModule::MARKUP).round(2)
  end

end
