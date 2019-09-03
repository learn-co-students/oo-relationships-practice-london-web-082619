require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA

g1 = Guest.new("Samantha")
g2 = Guest.new("Tom")
g3 = Guest.new("Kara")

l1 = Listing.new("London")
l2 = Listing.new("New York")
l3 = Listing.new("Vancouver")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l3, g3)
t4 = Trip.new(l1, g2)
t5 = Trip.new(l1, g3)


binding.pry
'save'