require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#bakery tests

flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50, cake)
flour = Ingredient.new("Flour", 100, cake)
chocolate = Ingredient.new("Chocolate", 200, cake)

chips = Ingredient.new("Chips", 100, cookies)
peanuts = Ingredient.new("Peanuts", 50, cookies)
hazelnut = Ingredient.new("Hazlenuts", 25, cookies)

#airbnb tests

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

#lyft tests

p1 = Passenger.new("Anakin")
p2 = Passenger.new("Palpatine")
p3 = Passenger.new("Sidious")
p4 = Passenger.new("Maul")

d1 = Driver.new("Han")
d2 = Driver.new("Chewie")
d3 = Driver.new("Lando")
d4 = Driver.new("Luke")

r1 = Ride.new(p1, d1,10)
r2 = Ride.new(p2, d2,100)
r3 = Ride.new(p3,d3,8)
r4 = Ride.new(p4,d4,36)
r5 = Ride.new(p1,d3,100)
r6 = Ride.new(p1,d4,45)

#IMDB tests
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

cm1 = CharMov.new(m1, c1)
cm11 = CharMov.new(m1, c2)
cm111 = CharMov.new(m1, c3)
cm1111 = CharMov.new(m1, c4)
cm2 = CharMov.new(m2, c1)
cm22 = CharMov.new(m2, c2)
cm222 = CharMov.new(m2, c3)
cm2222 = CharMov.new(m2, c4)
cm3 = CharMov.new(m3, c1)
cm33 = CharMov.new(m3, c2)
cm333 = CharMov.new(m3, c3)
cm3333 = CharMov.new(m3, c4)

cs1 = CharShow.new(s1, c1)
cs11 = CharShow.new(s1, c2)
cs111 = CharShow.new(s1, c3)
cs1111= CharShow.new(s1, c4)
cs2 = CharShow.new(s2, c1)
cs22 = CharShow.new(s2, c2)
cs222 = CharShow.new(s2, c3)
cs2222 = CharShow.new(s2, c4)
cs3 = CharShow.new(s3, c1)
cs33 = CharShow.new(s3, c2)
cs333 = CharShow.new(s3, c3)
cs3333 = CharShow.new(s3, c4)

binding.pry
0