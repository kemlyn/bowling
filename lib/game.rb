# Initializes and starts the game
class Game
  attr_accessor :score, :user
  def initialize
    @score = Game::Scoring.new
    @user = Game::User.new
  end

  def run
    @score.run(@user.roll1, @user.roll2)
  end

  # outcomes and scoring
  class Scoring
    attr_accessor :userscore
    # keeping score
    def initialize
      @userscore = 0
    end

    def run(roll1, roll2)
      if roll1 > 10 || roll2 > 10 || roll1 + roll2 > 10
        puts 'Invalid input'
      elsif roll1 == 10
        puts 'STRIKE!'
        @userscore += 10
      elsif roll1 + roll2 == 10
        puts 'SPARE!'
        @userscore += 10
      else
        puts "You're score is #{roll1 + roll2} out of 10"
        @userscore += (roll1 + roll2)
      end
    end
  end

  # player setup
  class User
    def roll1
      puts %(What's your roll?)
      gets.chomp.to_i
    end

    def roll2
      puts %(What's your roll?)
      gets.chomp.to_i
    end
  end
end
