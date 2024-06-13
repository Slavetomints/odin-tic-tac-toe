#This class contains the logic for the board
class Board
  def initialize
    @board = [%w[1 2 3], %w[4 5 6], %w[7 8 9], %w[1 4 7], %w[2 5 8], %w[3 6 9],
              %w[1 5 9], %w[3 5 7]]
  end

  def update_board(player); end

  def show_board
    puts ' ' + @board[0][0] + ' | ' + @board[0][1] + ' | ' + @board[0][2]
    puts '---+---+---'
    puts ' ' + @board[1][0] + ' | ' + @board[1][1] + ' | ' + @board[1][2]
    puts '---+---+---'
    puts ' ' + @board[2][0] + ' | ' + @board[2][1] + ' | ' + @board[2][2]
  end
end
