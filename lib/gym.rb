class Gym
  attr_reader :name

  #set a class variable to keep track of every gym intstance 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #class getter method that returns a list of all gyms
  def self.all
    @@all
  end

  #method that returns all memberships at a specfic gym
  def membership
    Membership.all.select { |memebership| membership.gym == self }
  end

  #method to return a list of all the lifters that havea a membership
  def lifters_names
    lifters.map {|memeber| member.name}
  end

  #method returns the combined lift total of all lifters with memberships to that gym
  def lift_total
    # lifters.reduce(0) do |total, lifter|
    #   total += lifter.lift_total
    #   total
    lifers.sum { |lifter| lifter.lift_total }
  end

end
