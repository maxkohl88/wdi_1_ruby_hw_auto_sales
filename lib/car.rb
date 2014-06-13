require 'date'

class Car

  ANNUAL_DEPRECATION = 0.95
  MARKUP = 1.25

  attr_reader :make, :model, :year, :msrp

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
      initial_price = initial_price * ANNUAL_DEPRECATION
      lifespan -= 1
    end

    initial_price.round(2)
  end

  def price
    (@current_value * MARKUP).round(2)
  end

end
