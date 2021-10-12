class BMI

    def questions

        score = 0

        # get users weight and use error handling so they cant give you a wrong answer
        begin
            puts "How much do you weigh?"
            weight = Integer(gets.chomp)
            
        rescue 
            puts "Please enter only numbers"
            retry
        else
        
        end

        # get users height and use error handling so they cant give you a wrong answer
        puts "How tall are you? (in m's)"
        height = gets.chomp.to_f

        # calcualte users bmi
        bmi = (weight / (height * height))
        puts "Generating your bmi:"
        sleep(1)

        # display custom message based on bmi
        if bmi <= 18.5
            puts "Your bmi is: #{Integer(bmi)} which is considered underweight"
            score -= 10
        elsif bmi > 18.5 && bmi < 25
            puts "Your bmi is: #{Integer(bmi)} which is considered average"
            score += 10
        elsif bmi > 25 && bmi < 30
            puts "Your bmi is: #{Integer(bmi)} which is considered overweight"
            score -= 5
        else
            puts "Your bmi is: #{Integer(bmi)} which is considered obese"
            score -= 10
        end

        return score
    end

end






