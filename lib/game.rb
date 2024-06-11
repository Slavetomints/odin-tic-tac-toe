require_relative 'player'
require_relative 'board'

class Game < Board
  attr_accessor :player_1, :player_2, :board

  def initialize (player_1, player_2)
    super()
    @player_1 = Player.new('X', player_1)
    @player_2 = Player.new('O', player_2)
    @board = Board.new
  end
end

game = Game.new('player_1', 'player_2')
puts game.player_1.name
puts game.player_2.name
game.board.show_board
Round.StartRound
