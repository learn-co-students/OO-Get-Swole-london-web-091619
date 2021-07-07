class Lifter
  attr_reader :name, :lift_total

  #class variable to keep track of all instances
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #set a class getter method to return all lifters
  def self.all
    @@all
  end

  #method that returns all memberships that each lifter has
  def memberships
    Membership.all.select { |member| member.lifters == self }
  end

  #method that lists all the gyms that 
  def gym_membership
    self.memberships.map {|membership| membership.gym }
  end

  #method to return the average lift total for all lifters
  def average_lift_total
    @@all.sum {|lifter| lifter.lift_total } / @@all.length
  end

  #method that returns the total cost of a specific lifters membership
  def total_cost_of_memberships
    self.memberships.sum { |membership| membership.cost }
  end

  #method to sign a lifter to a new gym
  def new_gym(cost, gym)
    Membership.new(self, cost, gym)
  end

end
