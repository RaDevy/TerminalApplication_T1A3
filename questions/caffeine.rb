require "tty-prompt"

class CaffeineQuestions

    def questions
        puts "There are many habits that can negatively affect your sleeping habits, one of them is caffeine."
        prompt = TTY::Prompt.new
        score = 0

        puts "" 
        coffee = prompt.slider("How many cups of coffee do you have a day?", min: 0, max: 10, step: 1)

        case coffee
        when 0 
            score += 10
        when 1
            score += 9
        when 2 
            score += 8
        when 3
            score += 7
        when 4
            score += 6
        when 5
            score += 5
        when 6
            score += 4
        when 7
            score += 3
        when 8
            score += 2
        when 9
            score += 1
        when 10
            score += 0
        else
            score += 0
        end

        puts "Consuming large quantities of caffeine before bedtime can affect your sleep patterns "
        timeOfDay = prompt.select("What time of the day do you have your last coffee or energy drink?", %w(Morning Midday Afternoon Night))

        if timeOfDay == "Morning"
            score += 10
        elsif timeOfDay == "Midday"
            score += 5
        elsif timeOfDay == "Afternoon"
            score += 0
        else
            score -= 5
        end

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

