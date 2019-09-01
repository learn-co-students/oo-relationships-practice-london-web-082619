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



###### Lyft ######
passenger1 = Passenger.new("Angus")
passenger2 = Passenger.new("Bianca")
passenger3 = Passenger.new("Jack")

driver1 = Driver.new("Paul")
driver2 = Driver.new("Chris")
driver3 = Driver.new("Trudy")

ride1 = Ride.new(passenger1, driver1, 30.2)
ride2 = Ride.new(passenger2, driver2, 15.0)
ride3 = Ride.new(passenger3, driver1, 30.2)
ride4 = Ride.new(passenger1, driver3, 5.0)
=end


###### IMDB ######
actor1 = Actor.new("Charles Dance")
actor2 = Actor.new("Christian Bale")
actor3 = Actor.new("Tilda Swinton")
actor4 = Actor.new("Chris Hemsworth")
actor5 = Actor.new("Viggo Mortensen")
actor6 = Actor.new("Heath Ledger")

movie1 = Movie.new("The Lord of the Rings")
movie2 = Movie.new("Avengers Assemble")
movie3 = Movie.new("The Dark Knight")
movie4 = Movie.new("The Dark Knight Rises")
movie5 = Movie.new("Batman Begins")
movie6 = Movie.new("The Imitation Game")

show1 = Show.new("Game of Thrones")
show2 = Show.new("Avengers Assemble")

batman = Character.new("Batman", actor2, [movie3, movie4, movie5])
aragorn = Character.new("Aragorn", actor5, [movie1])
thor = Character.new("Thor", actor4, [movie2])
denniston = Character.new("Commander Denniston", actor1, [movie6])
tywin = Character.new("Tywin Lannister", actor1, [], [show1])
joker = Character.new("The Joker", actor6, [movie3])


binding.pry
0