require 'pry'
require_relative '../lib/used_car.rb'

ford = Car.new('Ford', 'GT500', 2014, 80000)

caddy = UsedCar.new('Cadillac', "DeVille", 1983, 23134, 76000)

subaru = UsedCar.new('Subaru', 'Outback', 2009, 25000, 47000)

binding.pry

