#This class contains all of the logic for the players of the game
class Player
  attr_accessor :name

  def initialize(sign)
    @sign = sign
    puts "What is your name"
    @name = gets.chomp
  end
end
