def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (end_total)
  puts "Sorry, you hit #{end_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end


def hit? (initial_round)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return initial_round
  elsif user_input == "h"
      second_round = initial_round + deal_card
  else
      invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  hit?(current_card_total) until current_card_total > 21
  display_card_total
end
