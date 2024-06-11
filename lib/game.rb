require_relative 'player_1'
require_relative 'player_2'
require_relative 'board'

class Game < Board

  def initialize (player_1, player_2)
    @player_1 = Player_1.new('X')
    @player_2 = Player_2.new('O')
    @board = Board.new
  end
end

game = Game.new('player_1', 'player_2')
game.board.show_board

