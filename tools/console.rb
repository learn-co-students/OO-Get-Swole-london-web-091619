# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lad = Lifter.new(name: 'john', lift_total: 99)
boy = Lifter.new(name: 'bob', lift_total: 79)
gym = Gym.new(name: 'golds')
bim = Gym.new(name: 'big')

binding.pry

puts "Gains!"
