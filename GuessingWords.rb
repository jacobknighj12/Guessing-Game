question1 = " A viscous subsance"
answer1 = "honey"

question2 = " The only start to a coders day"
answer2 = "coffee"

question3 = " The worst online meeting software, please stop them from using it, god please"
answer3 = "zoom"

question4 = " The best game laucher/marketplace"
answer4 = "steam"

question = question1
answer = answer1

playerInput = ""
index = 0
lives = 3
score = 0
#if score = 3 gameover
#Hangman game
#start with getting random word// fuck that shit lets just put in fixed qna for now
#after getting random word and putting it into var get 2 -3 words of definition of word
#ask player to guess
#3 stikes then reset

puts "Welcome!"     #    "%s "    % answer
while index <= 4
puts "Here is your hint: %s" % question

playerInput = gets

if playerInput.include? answer # = true then +1 "H" "o" "n" "e" "y"
  score += 1
  index +=1
  print "Correct! " + answer + ", Your score: " + score.to_s
  puts " lives left: " + lives.to_s

  if score == 4 then index = 6
  end
  if index == 1
    answer = answer2
    question = question2
  end
  if index == 2
    answer = answer3
    question = question3
  end
  if index == 3
    answer = answer4
    question = question4
  end
#  puts "Next question!:" + question
else
  puts "failure"
  lives -= 1
  print "lives left: "
  puts lives
  if lives >= 1 then puts "Try again!"
  puts "the word starts with a " + answer[0]

  end
end
 if lives == 0 then index = 6
 end
end

puts "End of game! Thanks for playing!"
while index == 5
puts "Play again?"

end
#standard library (learn this specificly)(rubycore)(import shit or random numbers)
# %d for in string stuff
