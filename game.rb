module MathGame
  class Game
    def initialize
      @players = [Player.new('Player1'), Player.new('Player2')]
      @current_player = 0

      puts 'Numeric Combat! FIGHT!'

      while ((@players[0].health > 0) && (@players[1].health > 0))
        print "#{@players[0].name}: #{@players[0].health}/3, "
        puts  "#{@players[1].name}: #{@players[1].health}/3"
        Turn.new(@players[@current_player], Question.new)
        @current_player = (@current_player + 1) % 2
      end

      puts "Game Over!"
      @winner = @players.detect {|player| player.health > 0}
      puts "#{@winner.name} survives with #{@winner.health}/3 lives."

    end
  end
end