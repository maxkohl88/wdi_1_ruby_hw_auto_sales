class Car
  attr_reader :make, :model, :year
  attr_accessor

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end
end
