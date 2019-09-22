class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(gym:, cost:, lifter:)
    @cost = cost
    @gym = gym
    @lifter = lifter
    save
  end
end
