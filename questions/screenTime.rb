require "tty-prompt"

class ScreenTimeQuestions

    def questions
        puts "Apart from caffeinated drinks too much screen time can negatively affect your sleeping habits."
        prompt = TTY::Prompt.new
        score = 0

        puts "" 
        
        screenTime = prompt.slider("How many hours do you spend on screen in a day?", min: 0, max: 10, step: 1)

        case screenTime
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

        puts " Engaging in too many different screen activities for long periods of time can negatively affect your physical and mental health"
        screenTime = prompt.select("What would be your main screen activity that do you engage in a day", %w(Working Gaming Shopping Social_Networking))

        if  screenTime == "Working"
            score -= 1
        elsif screenTime == "Gaming"
            score -= 5
        elsif screenTime == "Shopping"
            score -= 2
        elsif screenTime == "Social_Networking"
            score -= 3    
            
        else
            score -= 5
        end

        choices = %w(Working Gaming Shopping Social_Networking)
        habits = prompt.multi_select("Which are the predominant activity do you do before bed", choices)

        if habits.include? "Working"
            score -= 1
        end
        if habits.include? "Gaming"
            score -= 5
        end
        if habits.include? "Shopping"
            score -= 2
        end
        if habits.include? "Social_Networking"
            score -= 3
        end

        return score
    end

end

