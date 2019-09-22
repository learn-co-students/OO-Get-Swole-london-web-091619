class Gym
  attr_reader :name

  #set a class variable to keep track of every gym intstance 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #class getter method that returns a list of all gyms
  def all
    @@all
  end

  #method that returns all memberships at a specfic gym
  def gym_lifters
    Membership.all.select { |memeber| member.gym == self }

  end

  #method to return a list of all the lifters that havea a membership
  def  gym_lifters_names
    self.lifters.map {|memeber| member.name}
  end

  #method returns the combined lift total of all lifters with memberships to that gym
  def lift_total
    self.lifters.reduce(0) do |total, lifter|
      total += lifter.lift_total
      total
  end

end
