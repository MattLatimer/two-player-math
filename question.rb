module MathGame
  class Question
    def initialize

      @a = rand(20) + 1
      @b = rand(20) + 1
      @c = @a + @b

    end

    def ask
      "What does #{@a} plus #{@b} equal?"
    end

    def result(answer)
      @c == answer
    end
  end
end