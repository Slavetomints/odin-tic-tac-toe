require_relative 'player'
require_relative 'board'

#This class will do the bulk of the running of the game.
class Game
  attr_accessor :board, :player_1, :player_2, :selected_numbers

  def initialize(player_1, player_2)
    @player_1 = Player.new('X')
    @player_2 = Player.new('O')
    @board = Board.new
    @selected_numbers = []
    @active_player = @player_1
    puts "Welcome #{@player_1.name} and #{@player_2.name}"
  end

  def show_board
    @board.show_board
  end

  def play_round
    puts "\n#{@active_player.name}, where would you like to play?"
    @board.show_board
    choice = gets.chomp
    if choice.to_i.between?(1, 9)
      if @selected_numbers.include?(choice)
        puts "Space already chosen, please pick again"
      else
        @selected_numbers << choice
        @board.update_board(@active_player.sign, choice)
        if @board.game_won?
          puts "---------------------"
          puts "#{@active_player.name} wins!"
          puts @board.show_board
          puts "---------------------"
          exit
        elsif @board.game_tied?
          puts "---------------------"
          puts "Tie Game!"
          puts @board.show_board
          puts "---------------------"
          exit
        else @active_player = @active_player == @player_1 ? @player_2 : @player_1
        end
      end
    else puts "Invalid choice, please pick again"
    end
  end
end

game = Game.new('player_1', 'player_2')
loop do
  game.play_round
end

