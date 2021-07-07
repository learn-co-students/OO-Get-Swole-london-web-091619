# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Eddie", 500)
lifter2 = Lifter.new("Jim", 350)
lifter3 = Lifter.new("Harry", 180)

gym1 = Gym.new("Virgin")
gym2 = Gym.new("PureGym")
gym3 = Gym.new("MClub")

m1 = Membership.new(40, lifter1, gym3)
m2 = Membership.new(50, lifter3, gym1)
m3 = Membership.new(25, lifter2, gym2)


binding.pry
0
puts "Gains!"
