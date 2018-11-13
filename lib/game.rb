# Initialize and start the game
class Game
  attr_accessor :score, :user
  # Initializes the input and outcomes for running the game
  def initialize
    @score = Game::Scoring.new
    @user = Game::User.new
  end

  # Runs the game
  def run
    @score.run(@user.roll1, @user.roll2)
  end

  # Outcomes and scoring
  class Scoring
    attr_accessor :userscore
    # Initializing the score
    def initialize
      @userscore = 0
    end

    # Setting the score and determining the outcome
    def run(roll1, roll2)
      if roll1 > 10 || roll2 > 10 || roll1 + roll2 > 10
        puts 'Invalid input'
      elsif roll1 == 10
        puts 'STRIKE!'
        @userscore += 25
      elsif roll1 + roll2 == 10
        puts 'SPARE!'
        @userscore += 17
      elsif roll1 + roll2 == 0
        puts 'Gutter Game, better luck next time!'
      else
        puts "You're score is #{roll1 + roll2} out of 10"
        @userscore += (roll1 + roll2)
      end
    end
  end

  # Player setup
  class User
    # Users input of both roles
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
