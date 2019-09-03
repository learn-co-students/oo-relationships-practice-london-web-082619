require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA
t1 = Trainer.new("Scott")
t2 = Trainer.new("Bryony")
t3 = Trainer.new("Laura")

c1 = Client.new("Lisa", t1)
c2 = Client.new("Jim", t1)
c3 = Client.new("Roger", t2)
c4 = Client.new("Peter", t3)
c5 = Client.new("Will", t3)
c6 = Client.new("Freddy", t3)
c7 = Client.new("Stacy", t3)

l1 = Location.new("Southbank")
l2 = Location.new("The Wharf")

t1.assign_location(l1)
t2.assign_location(l1)
t3.assign_location(l1)
t1.assign_location(l2)
t2.assign_location(l2)

binding.pry
'save'