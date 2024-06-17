require_relative 'player'

#This class contains the logic for the board
class Board
  attr_accessor :board

  def initialize
    @board = [%w[1 2 3], %w[4 5 6], %w[7 8 9], %w[1 4 7], %w[2 5 8], %w[3 6 9], %w[1 5 9], %w[3 5 7]]
  end

  def update_board(sign, choice)
    @board.each do |row|
      row.map! do |square|
        if square == choice
          square = sign
        else
          square = square
        end
      end
    end
  end

  def game_won?
    @board.each do |row|
      return true if row.uniq.length == 1
    end
    false
  end

  def game_tied?
    @board.each do |row|
      puts row
    end
  end

  def show_board
    puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
    puts '---+---+---'
    puts ' ' + @board[1][0] + ' | ' + @board[1][1] + ' | ' + @board[1][2]
    puts '---+---+---'
    puts ' ' + @board[2][0] + ' | ' + @board[2][1] + ' | ' + @board[2][2]
  end
end
