module MathGame
  class Player
  attr_reader :name, :health
  
    def initialize(name)
      @name = name
      @health = 3
    end

    def lose_point
      @health -= 1
    end
  end
end