class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def gym_members
    memberships.map{|membership| membership.lifter}
  end

  def gym_members_names
    gym_members.map{|member| member.name}
  end

  def total_lifts
    gym_members.sum{|member| member.lift_total}
  end

end
