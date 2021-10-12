require "colorize"

class FinalScoreAdvice

    def initialize (finalScore)
        @numberIuseElsewhere = finalScore
    end

    # Get users score and tell them advice dependent

    def finalAdvice
        if @numberIuseElsewhere <= 1..3
            puts "You potentially have poor sleep hygiene, please consult a health professional".colorize(:red)
        elsif @numberIuseElsewhere == 4..6
            puts "You have average sleep hygiene, some postive change could improve it further".colorize(:teal)
        elsif @numberIuseElsewhere == 7..9
            puts "You have above average sleep hygiene, this is a great start"
        elsif @numberIuseElsewhere == 15
            puts "You have good sleep hygiene, well done".colorize(:magenta)
        else
            puts "Reviewing your sleeping habits is important"
        end
    end
end

