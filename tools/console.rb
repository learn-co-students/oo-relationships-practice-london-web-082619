require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Jose")
guest2 = Guest.new("Mary")
guest3 = Guest.new("Lily")

city1 = Listing.new("Seattle")
city2 = Listing.new("Tokio")
city3 = Listing.new("Venice")

trip1 = Trip.new(guest1, city1)
trip2 = Trip.new(guest2,  city2)
trip3 = Trip.new(guest3,  city3)

binding.pry
0