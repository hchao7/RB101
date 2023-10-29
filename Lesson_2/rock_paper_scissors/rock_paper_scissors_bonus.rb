require 'yaml'
MESSAGES = YAML.load_file('rps_bonus_messages.yml')

# Valid abbreviations for moves
VALID_CHOICES = %w(r p sc sp l)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Determine if there is a win for an individual round
def win?(first, second)
  winning_moves = { "scissors" => ["paper", "lizard"],
                    "paper" => ["rock", "spock"],
                    "rock" => ["lizard", "scissors"],
                    "lizard" => ["spock", "paper"],
                    "spock" => ["scissors", "rock"] }
  winning_moves[first].include?(second)
end

# Determine Player Win, Computer Win, or Tie for individual round
def round_result(player, computer)
  if win?(player, computer)
    "Player Win"
  elsif win?(computer, player)
    "Computer Win"
  else
    "Tie"
  end
end

# Display message according to the result
def display_round_result(result)
  case result
  when 'Player Win'
    prompt(MESSAGES['player_win'])
  when 'Computer Win'
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

# Prompt that appears each time player needs to enter a move
choice_prompt = <<-MSG
Choose your move by entering the abbreviation on the left:
  r  - rock
  p  - paper
  sc - scissors
  sp - spock
  l  - lizard

Enter abbreviation here:
MSG

# Abbreviations and fullnames for moves
fullname_choices = { "r" => "rock",
                     "p" => "paper",
                     "sc" => "scissors",
                     "sp" => "spock",
                     "l" => "lizard" }

# Start overall game
loop do
  num_player_wins = 0
  num_computer_wins = 0

  # Start individual round
  loop do
    abbreviated_choice = ''

    # Ask human player to enter move until valid move is entered
    loop do
      prompt(choice_prompt)
      abbreviated_choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(abbreviated_choice)
        break
      else
        prompt(MESSAGES['invalid_choice'])
      end
    end

    # Assign computer player a move
    choice = fullname_choices[abbreviated_choice]
    computer_choice = fullname_choices[VALID_CHOICES.sample]
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    # Determine round result
    result = round_result(choice, computer_choice)
    display_round_result(result)

    # Update score
    if result == 'Player Win'
      num_player_wins += 1
    elsif result == 'Computer Win'
      num_computer_wins += 1
    end

    # Display score
    prompt("You have: #{num_player_wins} wins; " \
           "Computer has: #{num_computer_wins} wins")

    # Check for grand winner
    if num_player_wins == 3
      prompt(MESSAGES['player_grand_winner'])
      break
    elsif num_computer_wins == 3
      prompt(MESSAGES['computer_grand_winner'])
      break
    end
  end

  # Ask if player wants to continue or exit the game
  prompt(MESSAGES['play_again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
