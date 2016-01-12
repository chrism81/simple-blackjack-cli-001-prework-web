def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  j=deal_card+deal_card
  display_card_total(j)
  return j
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  res = get_user_input
  until res=='h'||'s'
    invalid_command
    prompt_user
    res = get_user_input 
   end  
  if res=='h'
    n = deal_card
    card_total=card_total+n
    display_card_total(card_total)
  end
  return card_total# code hit? here
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total=initial_round
  while card_total<=21
  card_total=hit?(card_total) 
  end
  end_game(card_total)
  # code runner here
end
    
