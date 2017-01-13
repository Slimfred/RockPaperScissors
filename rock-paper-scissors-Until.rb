puts "Hello! Let's play Rock, Paper, Scissors."
puts "To get out of the game type Quit."

def rockPaperScissors
  continue = "continue"

  until continue == "quit" do
    puts "Please enter Rock, Paper or Scissors:"
    userChoice = gets.chomp
    case userChoice.downcase
    when "rock"
      puts "You chose " + userChoice + "."
    when "paper"
      puts "You chose " + userChoice + "."
    when "scissors"
      puts "You chose " + userChoice + "."
    when "quit"
      continue = "quit"
    else
      puts "That is not one of the options."
    end

    compRand = rand(4)
    if (compRand == 1)
      compChoice = "Rock"
    elsif (compRand == 2)
      compChoice = "Paper"
    else
      compChoice = "Scissors"
    end

    if (continue == "continue")
    puts "The computer chose " + compChoice + "."
    else
    puts "See you next time!"
    end

    if (userChoice.downcase == compChoice.downcase)
      puts "It's tie!"
    elsif (userChoice.downcase == "rock" && compChoice == "Scissors")
      puts "You Win!!"
    elsif (userChoice.downcase == "rock" && compChoice == "Paper")
      puts "Computer Wins!!"
    elsif (userChoice.downcase == "paper" && compChoice == "Rock")
      puts "You Win!!"
    elsif (userChoice.downcase == "paper" && compChoice == "Scissors")
      puts "Computer Wins!!"
    elsif (userChoice.downcase == "scissors" && compChoice == "Rock")
      puts "Computer Wins!!"
    elsif (userChoice.downcase == "scissors" && compChoice == "Paper")
      puts "You Win!!"
    end
  end
end

rockPaperScissors
