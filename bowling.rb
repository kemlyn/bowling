require './lib/game.rb'

f = 0
e = 10
# Loops over the game to ensure 10 frames are complete
while f < e
  game = Game.new
  9.times do
    game.run
    puts "Total Score: #{game.score.userscore} out of a possible 300"
  end
  game.run
  if game.user.roll1 == 10
    puts 'Bonus points!'
    game.score.userscore += 50
  elsif game.user.roll1 + game.user.roll2 == 10
    puts 'Bonus points!'
    game.score.userscore += 30
  end
  puts "Total Score: #{game.score.userscore} out of a possible 300"
  puts 'want to play again? (y/n)'
  answer = gets.chomp
  break if answer == 'n'
end
