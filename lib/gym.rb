class Gym
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name)
    @name = name
    save
  end

  def memberships
    Membership.all.select { |membership| membership.gym.eql?(self) }
  end

  def members
    memberships.map(&:lifter)
  end

  def member_names
    members.map(&:name)
  end

  def total_lifts
    members.map(&:lift_total).reduce(:+) / members.count
  end
end
