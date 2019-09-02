require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

trainer1 = Trainer.new("trainer1")
trainer2 = Trainer.new("trainer2")
trainer3 = Trainer.new("trainer3")

location1 = Location.new("location1")
location2 = Location.new("location2")
location3 = Location.new("location3")

client1 = Client.new("client1")
client2 = Client.new("client2")
client3 = Client.new("client3")

binding.pry
0