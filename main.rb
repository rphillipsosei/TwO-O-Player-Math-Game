require './players.rb'
require './game.rb'
require './questions.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
question = Question.new

while player1.isAlive? && player2.isAlive?

game = Game.new(player1, player2)
game.run
end
puts "----- GAME OVER -----"
puts "Goodbye!"

