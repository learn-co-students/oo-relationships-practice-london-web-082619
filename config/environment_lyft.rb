require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA

p1 = Passenger.new("Lisa")
p2 = Passenger.new("John")
p3 = Passenger.new("Jill")
p4 = Passenger.new("Karl")
p5 = Passenger.new("Tom")

d1 = Driver.new("Abdul")
d2 = Driver.new("Kerry")
d3 = Driver.new("Max")

r1 = Ride.new(p1, d1, 30)
r2 = Ride.new(p2, d2, 40)
r3 = Ride.new(p3, d3, 120)
r4 = Ride.new(p4, d1, 25)
r5 = Ride.new(p5, d2, 55)
r6 = Ride.new(p1, d3, 12)
r7 = Ride.new(p2, d1, 60)

binding.pry
'save'