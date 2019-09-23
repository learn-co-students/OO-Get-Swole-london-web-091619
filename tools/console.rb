# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Tom", 50)
lifter2 = Lifter.new("Kurt", 30)
lifter3 = Lifter.new("Alonso", 65)
lifter4 = Lifter.new("Kim", 25)
lifter5 = Lifter.new("Kate", 40)

gym1 = Gym.new("Steel")
gym2 = Gym.new("TrainHard")
gym3 = Gym.new("Energy")
gym4 = Gym.new("WorkOut")
gym5 = Gym.new("Strongster")

memb1 = Membership.new(20, lifter1, gym1)
memb2 = Membership.new(30, lifter2, gym2)
memb3 = Membership.new(40, lifter3, gym3)
memb4 = Membership.new(50, lifter4, gym4)
memb5 = Membership.new(60, lifter1, gym2)


binding.pry

puts "Gains!"
