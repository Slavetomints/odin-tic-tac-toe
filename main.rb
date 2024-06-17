require_relative 'lib/game'

game = Game.new('player_1', 'player_2')
loop do
  game.play_round
end