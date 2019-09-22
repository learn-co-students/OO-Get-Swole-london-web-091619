# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 =  Lifter.new("lifter1", 10)
lifter2 =  Lifter.new("lifter2", 10)
lifter3 =  Lifter.new("lifter3", 100)
lifter4 =  Lifter.new("lifter4", 0)

gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")

membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(1, lifter2, gym1)
membership3 = Membership.new(200, lifter2, gym2)
membership4 = Membership.new(15, lifter3, gym1)

binding.pry

puts "Gains!"
