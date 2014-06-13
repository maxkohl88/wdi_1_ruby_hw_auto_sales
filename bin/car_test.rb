require 'pry'
require_relative '../lib/used_car.rb'

subaru = UsedCar.new('Subaru', 'Outback', 2009, 25000, mileage: 47000)

binding.pry

