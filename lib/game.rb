# Initializes and starts the game
class Game
  def initialize(frame = 10, pin = 10)
    @frame = frame
    @pins = pin
    @score = Game::Score.new
    @user = Game::User.new
  end

  def run
    @score.roll(@user.roll1, @user.roll2)
  end

  # outcomes and scoring
  class Score
    attr_accessor :userscore
    # keeping score
    def initialize
      @userscore = 0
      @roll1 = []
      @roll2 = []
    end

    def roll(roll1, roll2)
      @roll1 << roll1.to_s.split('').map(&:to_i)
      @roll2 << roll2.to_s.split('').map(&:to_i)
      if roll1 == 10
        puts %(STRIKE!)
        @userscore += 10
      elsif roll1 + roll2 == 10
        puts %(SPARE!)
        @userscore += 10
      else
        puts 'You\'re score is' + " #{roll1 + roll2} " + 'out of a possible 10'
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
