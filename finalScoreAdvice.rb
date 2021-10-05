require "colorize"

class FinalScoreAdvice

    def initialize (finalScore)
        @numberIuseElsewhere = finalScore
    end

    def finalAdvice
        if @numberIuseElsewhere == 1..3
            puts "Thats an unhealthy sleep habit please fix".colorize(:red)
        elsif @numberIuseElsewhere == 4..6
            puts "Slightly better".colorize(:teal)
        elsif @numberIuseElsewhere == 7..9
            puts "Good try"
        elsif @numberIuseElsewhere == 15
            puts "You have average sleeping habits".colorize(:magenta)
        else
            puts "Good sleeping habits"
        end
    end
end