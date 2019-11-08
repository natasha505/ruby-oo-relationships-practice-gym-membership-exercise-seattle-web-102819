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

  def lifter_memberships
    Membership.all.select do | membership |
      membership.lifter == self
    end 
  end 

  #list gym name(s) a certain lifter belongs to
  def gym_memberships
    Membership.all.select {|m| m.lifter == self}.map {|m| m.gym}
  end 

  #average lift total of all lifters
  def self.lifters_average
    lifts_total = @@all.map do | lifter |  #going throu list of all lifters, mapping the lift total & returns to assinged name the 
      lifter.lift_total
    end 
      return lifts_total.inject do |sum, element| 
        sum + element
      end / lifts_total.length 
  end 
 
  def total_cost
    Membership.all.select {|m| m.lifter == self }.map {|m| m.cost }.sum
  end 

  def new_membership(gym, cost)
    Membership.new(cost, self, gym) 

  end 


end
