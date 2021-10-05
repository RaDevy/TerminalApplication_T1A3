require_relative "questions/caffeine.rb"
require_relative "questions/bmi.rb"
require_relative "finalScoreAdvice.rb"
require "tty-prompt"
require "tty-progressbar"
require "sounder"

# if file.json == empty
#    start at beginning 
# else 
#    start at where file has saved too
# end

# greet the user

puts """
_       __     __                        
| |     / /__  / /________  ____ ___  ___ 
| | /| / / _ \\/ / ___/ __ \\/ __ `__ \\/ _ \\
| |/ |/ /  __/ / /__/ /_/ / / / / / /  __/
|__/|__/\\___/_/\\___/\\____/_/ /_/ /_/\\___/ 
                                                         
"""

# Ask the user what they would like to do

puts "Welcome to the sleep doctor, what can I help you with?"
prompt = TTY::Prompt.new
choice = prompt.select("What would you like to do?", %w(Start Exit))

# get the response and execute the valid code

if choice == "Start"

    # play a greeting/loading sounds

    sound = Sounder::Sound.new "sound/test.wav"
    sound.play
    bar = TTY::ProgressBar.new("initializing test [:bar]", total: 30)
    30.times do
        sleep(0.1)
        bar.advance  # by default increases by 1
      end

    # initialize final score variable

    finalScore = 0

    # Initalize caffeine questions and start them for the user

    caffeine = CaffeineQuestions.new
    caffeineScore = caffeine.questions
    finalScore += caffeineScore

    # Initalize BMI questions and start them for the user

    bmi = BMI.new
    bmiScore = bmi.questions
    finalScore += bmiScore

    # Calculate the final score based off what the user has inputted

    puts "Congratulatiomns your score was #{finalScore}"

    # Display advice depending on final results

    adviceForTheUser = FinalScoreAdvice.new(finalScore)
    adviceForTheUser.finalAdvice
    
else
    puts "Goodbye"
end


