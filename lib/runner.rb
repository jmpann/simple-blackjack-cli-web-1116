require_relative "blackjack.rb"
def run_program
  welcome
  current_card_total = initial_round
  hit?(current_card_total) until current_card_total > 21
  end_game(current_card_total) 
end
