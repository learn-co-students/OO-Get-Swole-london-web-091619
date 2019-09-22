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
  def lifter_membership
    Membership.all.select { |member| member.lifters == self }
  end

  #method that lists all the gyms that 
  def gym_membership
    Membership.all.select {|member| member.gym == self }

  end

  #method to return the average lift total for all lifters
  def average_lift_total
    self.all.map {|lifter| lifter.lift_total }
  end

  #method that returns the total cost of a specific lifters membership
  def total_cost_of_memberships
    self.memberships.inject { |total, member| total += member.cost }
  end

  #method to sign a lifter to a new gym
  def new_gym(cost, gym)
    Membership.new(self, cost, gym)
  end

end
