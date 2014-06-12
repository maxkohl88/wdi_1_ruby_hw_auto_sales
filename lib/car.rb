require 'date'

class Car

  DEPRECIATION = 0.95

  attr_reader :make, :model, :year, :msrp

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @current_value = current_value
    # @value = current_value
  end

  def depricate
    @msrp = @msrp * DEPRECIATION
  end

  def current_value
    lifespan = (Date.today.year) - @year

    lifespan.times do
      depricate
    end

    @current_value
  end

end
