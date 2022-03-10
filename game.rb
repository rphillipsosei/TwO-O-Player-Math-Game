class Game
attr_accessor :player1, :player2

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    
    end

    def turn(player)
        question = Question.new
        puts question.math_prompt(player.name)
        answer = gets.chomp.to_i
        if question.verify?(answer)
            puts "#{player.name}, you are correct!"
        else
            puts "Seriously #{player.name}? No."
            player.wrongAnswer
        end
    end
    
    def run
        turn(@player1)
        puts " ----- NEW TURN -----"
        puts "P1: #{@player1.lives} / 3 vs. P2: #{@player2.lives} / 3 "
        if @player1.isAlive?
            turn(@player2)
            puts "P1: #{@player1.lives} / 3 vs. P2: #{@player2.lives} / 3 "
            puts " ----- NEW TURN -----" 

        end
     
    end
end

