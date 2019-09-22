class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def self.total_lifts
    all.reduce(0) { |sum, lifter| sum + lifter.lift_total }
  end

  def self.average_lift_total
    total_lifts / all.count
  end

  def save
    self.class.all << self
  end

  def initialize(name:, lift_total:)
    @name = name
    @lift_total = lift_total
    save
  end

  def buy_membership(gym:, cost:)
    Membership.new(gym: gym, cost: cost, lifter: self)
  end

  def memberships
    Membership.all.select { |membership| membership.lifter.eql?(self) }
  end

  def gyms
    memberships.map(&:gym)
  end

  def membership_outgoings
    memberships.reduce(0) { |sum, membership| sum + membership.cost }
  end
end
