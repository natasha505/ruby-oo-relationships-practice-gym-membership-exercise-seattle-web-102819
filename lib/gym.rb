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

  def memberships
    Membership.all.select {|m| m.gym == self }
  end 

  def lifters
    memberships.map {|m| m.lifter }
  end 

  def names
    lifters.map {|l| l.name }
  end 

  def total
    lifters.map {|l| l.lift_total}.sum
  end 

end
