class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #get list of all memberships at specific gym
  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  #lifters with membership at specific gym
  def lifters
    Membership.all.select { |lifter| lifter.gym == self }
  end

  #list of names of all lifters that have membership to that gym
  def lifters_names
    lifters.map { |lifter| lifter.name }
  end

end

