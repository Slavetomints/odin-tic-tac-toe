require_relative 'player'
require_relative 'board'

#This class will do the bulk of the running of the game.
class Game
  attr_accessor :board, :player_1, :player_2, :selected_numbers

  def initialize(player_1, player_2)
    super()
    @player_1 = Player.new('X')
    @player_2 = Player.new('O')
    @board = Board.new
    @selected_numbers = []
    puts "Welcome #{@player_1.name} and #{@player_2.name}"
  end

  def show_board
    @board.show_board
  end

  def game_won?
    @board.game_won?
  end

  def play_round
    active_player = @player_1
    choice = gets.chomp
    if choice.to_i.between?(1, 9)
      if @selected_numbers.include?(choice)
        puts "Space already chosen, please pick again"
      else
        @selected_numbers << choice
        @board.update_board(active_player.sign, choice)
        @board.show_board
        if game.game_won?
          puts "#{active_player} wins!"
        else 
          active_player == @player_1 ? @player_2 : @player_1
        end
      end
    else puts "Invalid choice, please pick again"
    end
  end

  while @game_over == false
    game.play_round
  end
end

game = Game.new('player_1', 'player_2')
game.show_board
game.play_round


