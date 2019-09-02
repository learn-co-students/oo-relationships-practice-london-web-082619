require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA
user1 = User.new("John")
user2 = User.new("Steph")
user3 = User.new("George")
user4 = User.new("Lily")

project1 = Project.new("AirPods", user1, 500)
project2 = Project.new("Roller Sneakers", user2, 250)
project3 = Project.new("Flying Car", user2, 900)
project4 = Project.new("Monzo", user3, 10000)

pledge1 = Pledge.new(user1, project2, 50)
pledge2 = Pledge.new(user3, project2, 300)
pledge3 = Pledge.new(user2, project3, 10)
pledge4 = Pledge.new(user2, project3, 100)
pledge5 = Pledge.new(user3, project1, 250)

#returns the user who has made the highest pledge - DONE
p User.highest_pledge

binding.pry
'save'