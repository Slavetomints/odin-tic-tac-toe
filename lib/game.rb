require_relative 'player'
require_relative 'board'

#This class will do the bulk of the running of the game.
class Game
  attr_accessor :board

  def initialize(player_1, player_2)
    super()
    @player_1 = Player.new('X')
    @player_2 = Player.new('O')
    @board = Board.new
    puts "Welcome #{@player_1.name} and #{@player_2.name}"
  end

  def show_board
    @board.show_board
  end
end

game = Game.new('player_1', 'player_2')
game.show_board
