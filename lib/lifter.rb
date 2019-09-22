class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gym_memberships
    memberships.map{|membership| membership.gym}
  end

  def self.average_total
    self.all.sum{|lifter| lifter.lift_total} / self.all.length
  end

  def memberships_cost
    memberships.sum {|membership| membership.cost}
  end

  def join_gym(gym, cost)
    Membership.new(cost, self, gym)
  end

end
