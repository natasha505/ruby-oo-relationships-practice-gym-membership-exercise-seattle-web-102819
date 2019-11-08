# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

la = Gym.new("LA Fitness")
hour = Gym.new("24 Hour")
gold = Gym.new("YMCA")

bob = Lifter.new("Bob", 20)
sam = Lifter.new("Sam", 200)
jon = Lifter.new("Jon", 5)

mem1 = Membership.new(35, bob, la)
mem2 = Membership.new(50, sam, hour)
mem3 = Membership.new(43, jon, gold)
mem4 = Membership.new(50, bob, hour)




binding.pry

puts "Gains!"


