class BMI

    def questions
        begin
            weight = gets.chomp.to_i
        rescue 
            puts "Please enter only numbers"
            retry
        else
        
        end
        
        height = gets.chomp.to_i
        score = 0
        bmi = weight / (height * height)
        
        if bmi < 18.5
            puts "underwight"
            score -= 10
        elsif bmi > 18.5 && bmi < 25
            puts "normal"
            score + 10
        elsif bmi > 25 && bmi < 30
            puts "overweight"
            score -= 5
        else
            puts "obese"
            score -= 10
        end
        return score
    end

end






