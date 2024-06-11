class Board
  def initialize
    @board = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9'], ['1', '4', '7'], ['2', '5', '8'], ['3', '6', '9'], ['1', '5', '9'], ['3', '5', '7']]
  end

  def update_board (player)
      
  end
  
  def show_board
    print ' ' + @board[0][0]
    print ' | '
    print @board[0][1]
    print ' | '
    puts @board[0][2]
    puts '---+---+---'
    print ' ' + @board[1][0]
    print ' | '
    print @board[1][1]
    print ' | '
    puts @board[1][2]
    puts '---+---+---'
    print ' ' + @board[2][0]
    print ' | '
    print @board[2][1]
    print ' | '
    puts @board[2][2]
  end
end