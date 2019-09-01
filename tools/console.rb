require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

=begin
flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50, cake)
flour = Ingredient.new("Flour", 100, cake)
chocolate = Ingredient.new("Chocolate", 200, cake)

chips = Ingredient.new("Chips", 100, cookies)
peanuts = Ingredient.new("Peanuts", 50, cookies)

# chips.bakery

# puts chips.name == "Chips"
=end

=begin
###### Gyms ######
client_names = ["Angus", "Bianca", "Trudy", "Chris", "Walkiria", "Paul"]
trainer_names = ["Rocky", "Chuck Norris", "The Rock", "Thor", "The Mountain"]
location_names = ["High Road", "Holborn", "Palmer's Green", "Chancery Lane", "Finsbury Pavement"]


10.times { Client.new(client_names.sample()) }
10.times { Location.new(location_names.sample()) }
10.times { Trainer.new(trainer_names.sample(), [Location.all().sample(), Location.all().sample(), Location.all().sample()]) }


client1 = Client.new("Jeff")
client2 = Client.new("Patrick")
client3 = Client.new("Olivia")

location1 = Location.new("loc1")
location2 = Location.new("loc2")
location3 = Location.new("loc3")

trainer1 = Trainer.new("Trainer 1", [location1, location2, location3])
trainer2 = Trainer.new("Trainer 2", [location1, location2])
trainer3 = Trainer.new("Trainer 3", [location1])

#Location 3 should have the least members
client1.assign_trainer(trainer1)
client2.assign_trainer(trainer2)
client3.assign_trainer(trainer3)
=end

###### Airbnb ######
listing1 = Listing.new("Happyhome", "London")
listing2 = Listing.new("Big Lodge", "Yosemite")
listing3 = Listing.new("Posh Tower", "New York")

guest1 = Guest.new("Hamish")
guest2 = Guest.new("Colin")
guest3 = Guest.new("Safira")
guest4 = Guest.new("Hamish")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing1, guest2)
trip5 = Trip.new(listing1, guest3)
trip6 = Trip.new(listing2, guest3)



binding.pry
0