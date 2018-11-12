require './lib/game.rb'
game = Game.new

10.times do
  game.run
  puts "Total Score: #{game.score.userscore} out of a possible 100"
end
