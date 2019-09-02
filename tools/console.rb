require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###BAKERY#######################

flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50, cake)
flour = Ingredient.new("Flour", 100, cake)
chocolate = Ingredient.new("Chocolate", 200, cake)
cake = Ingredient.new("Chocolate Cake", 100, cake)

chips = Ingredient.new("Chips", 100, cookies)
peanuts = Ingredient.new("Peanuts", 50, cookies)

################################
###AIRBNB#######################
listing1 = Listing.new("Bob's House", "London")
listing2 = Listing.new("Hilton", "London")
listing3 = Listing.new("Marriot", "Paris")
listing4 = Listing.new("Marriot", "New York")

guest1 = Guest.new("Matt")
guest2 = Guest.new("Boris")
guest3 = Guest.new("Matt")
guest4 = Guest.new("Mike")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing4, guest4)
trip5 = Trip.new(listing2, guest3)
trip6 = Trip.new(listing1, guest3)
trip5 = Trip.new(listing4, guest3)

################################
###LYFT#########################
passenger1 = Passenger.new("Matt")
passenger2 = Passenger.new("Mike")
passenger3 = Passenger.new("Michelle")
passenger4 = Passenger.new("JB")
passenger4 = Passenger.new("Angus")

driver1 = Driver.new("Muhammed")
driver2 = Driver.new("Ahmed")
driver3 = Driver.new("Muhammed")
driver4 = Driver.new("John")

ride = Ride.new(driver1, passenger1, 10)
ride = Ride.new(driver2, passenger2, 20)
ride = Ride.new(driver3, passenger3, 125)
ride = Ride.new(driver4, passenger4, 30)
ride = Ride.new(driver4, passenger3, 40)
ride = Ride.new(driver4, passenger1, 50)
ride = Ride.new(driver2, passenger1, 10)
ride = Ride.new(driver3, passenger4, 10)

################################
###IMDB#########################
m1 = Movie.new("Avengers Assemble")
m2 = Movie.new("Avengers: Age of Ultron")
m3 = Movie.new("Avengers: Infinity War")
m4 = Movie.new("Avengers: Endgame")

s1 = Show.new("Agents of Shield")
s2 = Show.new("Falcon and Winter Soldier")
s3 = Show.new("Wanda Vision")
s4 = Show.new("Hawkeye")

a1 = Actor.new("Robert Downey Jr")
a2 = Actor.new("Chris Hemsworth")
a3 = Actor.new("Tom Holland")
a4 = Actor.new("Jeremy Renner")
a5 = Actor.new("Scarlet Johanssen")
a6 = Actor.new("Cobie Smulders")
a7 = Actor.new("Samuel L Jackson")
a8 = Actor.new("Clark Gregg")


c1 = Character.new("Iron Man", a1)
c2 = Character.new("Thor", a2)
c3 = Character.new("Spiderman", a3)
c4 = Character.new("Hawkeye", a4)
c5 = Character.new("Black Widow", a5)
c6 = Character.new("Maria Hill", a6)

cm1 = CharMov.new(c1, m1)
cm11 = CharMov.new(c2, m1)
cm111 = CharMov.new(c3, m1)
cm1111 = CharMov.new(c4, m1)
cm2 = CharMov.new(c1, m2)
cm22 = CharMov.new(c2, m2)
cm222 = CharMov.new(c3, m2)
cm2222 = CharMov.new(c4, m2)
cm3 = CharMov.new(c1, m3)
cm33 = CharMov.new(c2, m3)
cm333 = CharMov.new(c3, m3)
cm3333 = CharMov.new(c4, m3)

cs1 = CharShow.new(c1, s1)
cs11 = CharShow.new(c2, s1)
cs111 = CharShow.new(c3, s1)
cs1111= CharShow.new(c4, s1)
cs2 = CharShow.new(c1, s2)
cs22 = CharShow.new(c2, s2)
cs222 = CharShow.new(c3, s2)
cs2222 = CharShow.new(c4, s2)
cs3 = CharShow.new(c1, s3)
cs33 = CharShow.new(c2, s3)
cs333 = CharShow.new(c3, s3)
cs3333 = CharShow.new(c4, s3)


a9 = Actor.new("Mark Ruffalo")
s5 = Show.new("Avengers Assemble")
cs4 = s5.add_character("Iron Man", a1)
cs44 = s5.add_character("Hulk", a9)

cm11111 = m1.add_character("Hulk", a9)
################################
###CROWDFUNDIN##################
u1 = User.new("Matt")
u2 = User.new("Mike")
u3 = User.new("Jeremy")

proj1 = Project.new("Project 1", u1, 100)
proj2 = Project.new("Project 2", u1, 70)
proj3 = Project.new("Project 3", u2, 80)
proj4 = Project.new("Project 4", u2, 120)

p1 = Pledge.new(u1, proj1, 50)
p2 = Pledge.new(u2, proj2, 40)
p3 = Pledge.new(u2, proj3, 20)
p4 = Pledge.new(u3, proj4, 90)
p5 = Pledge.new(u1, proj4, 30)
p6 = Pledge.new(u1, proj2, 50)

################################
###GYM##########################

loc1 = Location.new("London")
loc2 = Location.new("Margate")
loc3 = Location.new("Seti Alpha 5")

tra1 = Trainer.new("Chad")
tra2 = Trainer.new("Max Payne")
tra3 = Trainer.new("Thanos")

cli1 = Client.new("Walter",tra1)
cli2 = Client.new("Dennis")
cli3 = Client.new("Mr Rogers")

lt1 = Loctrain.new(loc1, tra1)
lt2 = Loctrain.new(loc2, tra2)
lt3 = Loctrain.new(loc3, tra1)
lt3 = Loctrain.new(loc3, tra3)
################################

binding.pry
0