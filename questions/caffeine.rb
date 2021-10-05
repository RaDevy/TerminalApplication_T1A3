require "tty-prompt"

class CaffeineQuestions

    def questions
        
        prompt = TTY::Prompt.new

        score = 0

        coffee = prompt.slider("How many cups of coffee do you have a day?", min: 0, max: 10, step: 1)

        if coffee == 0
            score += 10
        elsif coffee == 1
            score += 9
        elsif coffee == 2
            score += 8
        elsif coffee == 3
            score += 7
        elsif coffee == 4
            score += 6
        elsif coffee == 5
            score += 5
        elsif coffee == 6
            score += 4
        elsif coffee == 7
            score += 3
        elsif coffee == 8
            score += 2
        elsif coffee == 9
            score += 1
        else
            score += 0
        end

        puts score

        timeOfDay = prompt.select("What time of the day do you have your last coffee?", %w(Morning Midday Afternoon Night))

        if timeOfDay == "Morning"
            score += 10
        elsif timeOfDay == "Midday"
            score += 5
        elsif timeOfDay == "Afternoon"
            score += 0
        else
            score -= 5
        end

        puts score

        choices = %w(Caffeine Alcohol Technology Excercise)
        habits = prompt.multi_select("How many of these do you do before bed", choices)

        if habits.include? "Caffeine"
            score -= 5
        end
        if habits.include? "Alcohol"
            score -= 5
        end
        if habits.include? "Technology"
            score -= 10
        end
        if habits.include? "Excercise"
            score += 10
        end

        return score
    end

end

