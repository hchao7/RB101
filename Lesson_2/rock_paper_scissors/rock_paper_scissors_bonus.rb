VALID_CHOICES = %w(r p sc sp l)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Determine if there is a win for an individual round
def win?(first, second)
  winning_moves = {"scissors" => ["paper", "lizard"], 
                  "paper" => ["rock", "spock"], 
                  "rock" => ["lizard", "scissors"],
                  "lizard" => ["spock", "paper"],
                  "spock" => ["scissors", "rock"]}
  return winning_moves[first].include?(second)
end 

# Determine round result: Player Win, Computer Win, or Tie
def determine_round_result(player, computer)
  if win?(player, computer)
    "Player Win"
  elsif win?(computer, player)
    "Computer Win"
  else
    "Tie"
  end
end

def display_round_result(result)
  case result
    when 'Player Win'
      prompt("You won this round!")
    when 'Computer Win'
      prompt("The computer won this round!")
    else 
      prompt("It's a tie for this round!")
  end
end 

choice_prompt = <<-MSG
Choose your move by entering the abbreviation on the left:
  r  - rock
  p  - paper 
  sc - scissors
  sp - spock
  l  - lizard

Enter abbreviation here: 
MSG

fullname_choices = {"r" => "rock", 
"p" => "paper", 
"sc" => "scissors",
"sp" => "spock",
"l" => "lizard"}

loop do
  num_player_wins = 0
  num_computer_wins = 0

  loop do
    abbreviated_choice = ''
    loop do
      prompt(choice_prompt)
      abbreviated_choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(abbreviated_choice)
        break
      else
        prompt("That's not a valid choice.")
      end	
    end 

    choice = fullname_choices[abbreviated_choice]
    computer_choice = fullname_choices[VALID_CHOICES.sample]
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    result = determine_round_result(choice, computer_choice)
    display_round_result(result)

    # Update the score
    if result == 'Player Win'
      num_player_wins += 1 
    elsif result == 'Computer Win'
      num_computer_wins += 1 
    end

    # Display current score
    prompt("You have: #{num_player_wins} wins; Computer has: #{num_computer_wins}")
    
    # Display grand winner, if there is one
    if (num_player_wins == 3)
      prompt("You are the grand winner!")
      break
    elsif (num_computer_wins == 3)
      prompt("The Computer is the grand winner!")
      break
    end
  end 

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
