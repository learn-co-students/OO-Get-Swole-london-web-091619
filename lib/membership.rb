class Membership
  attr_reader :cost, :lifter, :gym

  #class variable to track every instance
  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  #a class getter method that returns all memberships
  def self.all 
    @@all
  end

end
