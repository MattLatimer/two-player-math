module MathGame
  class Turn
    def initialize(player, question)

      @player = player
      @question = question

      print "#{player.name}: "
      puts question.ask
      correct = question.result($stdin.gets.chomp.to_i)
      if (correct) 
        puts "#{player.name}: Correct! You are safe... for now."
      else
        puts "#{player.name}: INCORRECT! You will suffer the consequences!"
        player.lose_point
      end
    end
  end
end