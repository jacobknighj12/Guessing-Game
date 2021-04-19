File.open("questionAndAnswerFile.txt", "r") do |questionAndAnswerFile|

index = 0
questionArray = questionAndAnswerFile.readlines()
questionAndAnswer = questionArray[index].split("|")
question = questionAndAnswer[0].strip()
answer = questionAndAnswer[1].strip()
playerInput = ""
lives = 3
score = 0

puts "Welcome!"
while lives >=1 and repeat == true
  puts "Here is your hint: %s" % question
  playerInput = gets

  if playerInput.include? answer
    score += 1
    index +=1
    print "Correct! %s" % answer + " Your score: %s" % score
    puts " lives left: %s" % lives
    if index < questionArray.length()
      questionAndAnswer = questionArray[index].split("|")
      question = questionAndAnswer[0].strip()
      answer = questionAndAnswer[1].strip()
      else
        puts "End of game! Thanks for playing!"
        puts "Play again?"
        puts "y/n"
        playerInput = gets
          if playerInput.include? "n" then break
            end
          if playerInput.include? "y" then index = 0
            questionAndAnswer = questionArray[index].split("|")
            question = questionAndAnswer[0].strip()
            answer = questionAndAnswer[1].strip()
          end
      end
    else
      puts "failure"
      lives -= 1
      puts "lives left: %d" % lives
    if lives >= 1 then puts "Try again!"
      puts "the word starts with a %s" % answer[0]

      end
    end
  end
end




#standard library (learn this specificly)(rubycore)(import shit or random numbers)
# %d for in string stuff
