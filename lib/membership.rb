class Membership
  attr_reader :cost

  #class variable to track every instance
  @@all = []

  def initialize(cost)
    @cost = cost
    @@all << self
  end

  #a class getter method that returns all memberships
  def all 
    @@all
  end

end
