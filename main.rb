require "./player"
require "./game"
require "./question"

# start new game, entering players' names
print "Player 1, enter your name. "
name1 = gets.chomp.to_s
print "Player 2, enter your name. "
name2 = gets.chomp.to_s

player1 = Player.new(name1)
player2 = Player.new(name2)

#starting new game with new players
game = Game.new(player1, player2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # put out new question and answer
  question = Question.new
  print "#{game.current_player.name}: #{question.new_question}"
  answer = question.answer

  input = gets.chomp.to_i

  # verify in input answer is correct
  if (input != answer)
    game.minus_life
  end

  game.num_life

  game.change_player

end