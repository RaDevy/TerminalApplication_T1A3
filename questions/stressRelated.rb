class StressRelatedQuestions

    def questions
        puts "There are many habits that can negatively affect your sleep hygiene, one of them is stress."
        prompt = TTY::Prompt.new
        score = 0

        puts "" 
        stressRelated = prompt.slider("How would you rate your stress level?", min: 0, max: 10, step: 1)

        case stressRelated
        when 0 
            score += 0
        when 1
            score += 1
        when 2 
            score += 2
        when 3
            score += 3
        when 4
            score += 4
        when 5
            score += 5
        when 6
            score += 6
        when 7
            score += 7
        when 8
            score += 8
        when 9
            score += 9
        when 10
            score += 10
        else
            score += 0
        end

        puts " Many factors can contribute to your stress levels which could lead to poor sleep hygiene"
        stressRelated = prompt.select("How would you rate your stress level in an average day", %w(None Low Medium High))

        if  stressRelated == "None"
            score -= 1
        elsif stressRelated == "Low"
            score -= 2
        elsif stressRelated == "Medium"
            score -= 3
        elsif stressRelated == "High"
            score -= 5   
            
        else
            score -= 5
        end

        choices = %w(Yoga Exercise Alcohol Smoking)
        habits = prompt.multi_select("How do you cope with stress", choices)

        if habits.include? "Yoga"
            score += 5
        end
        if habits.include? "Exercise"
            score += 5
        end
        if habits.include? "Alcohol"
            score -= 5
        end
        if habits.include? "Smoking"
            score -= 5
        end

        return score
    end

end

