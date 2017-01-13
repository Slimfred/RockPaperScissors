puts "Hello! Let's play Rock, Paper, Scissors."

def rockPaperScissors
  continue = "yes"

  while (continue == "yes") do
    puts "Please enter Rock, Paper or Scissors:"
    userChoice = gets.chomp
    case userChoice.downcase
    when "rock"
      puts "You chose " + userChoice + "."
    when "paper"
      puts "You chose " + userChoice + "."
    when "scissors"
      puts "You chose " + userChoice + "."
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
    puts "The computer chose " + compChoice + "."

    userChoice = userChoice.downcase
    if (userChoice == compChoice)
      puts "It's tie!"
    elsif (userChoice == "rock" && compChoice == "Scissors")
      puts "You Win!!"
    elsif (userChoice == "rock" && compChoice == "Paper")
      puts "Computer Wins!!"
    elsif (userChoice == "paper" && compChoice == "Rock")
      puts "You Win!!"
    elsif (userChoice == "paper" && compChoice == "Scissors")
      puts "Computer Wins!!"
    elsif (userChoice == "scissors" && compChoice == "Rock")
      puts "Computer Wins!!"
    elsif (userChoice == "scissors" && compChoice == "Paper")
      puts "You Win!!"
    end

    puts "Would you like to play again? Please type yes or no:"
    continue = gets.chomp

  end
end

rockPaperScissors
