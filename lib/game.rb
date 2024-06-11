require_relative 'player_1'
require_relative 'player_2'
require_relative 'board'

class Game < Board
  attr_accessor :player_1, :player_2, :board

  def initialize (player_1, player_2)
    super()
    @player_1 = Player_1.new('X', player_1)
    @player_2 = Player_2.new('O', player_2)
    @board = Board.new
  end
end

game = Game.new('player_1', 'player_2')
puts game.player_1
puts game.player_2
game.board.show_board

