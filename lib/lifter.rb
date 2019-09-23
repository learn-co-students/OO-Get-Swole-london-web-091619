class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  #list of all memberships a specific lister has
  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  #list of all gyms that a specific lifter has memberships to
  def gyms
    Membership.all.select { |gym| gym.lifter == self }
  end

  #average lift total of all lifters
  def self.average_lift_total
    lift_list = self.all.map {|lifter| lifter.lift_total }
    lift_list.sum / lift_list.length
  end

  #total costs of a specific lifter's gym memberships
  def total_costs
    Membership.all.select { |cost| cost.lifter == self }
  end

end


