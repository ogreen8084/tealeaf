#need to decide if 11 or 1
deck = []

def count_hand(hand)
  score = 0
  ace = 0
  hand.each do |c|
    if c[1] == "J" || c[1] == "Q" || c[1] == "K" || c[1] == "1"
      score += 10
    elsif c[1] == "A"
      ace += 1
      score += 11
    else
      score += c[1].to_i
    end
  end
  while ace >=1 
    if score > 21
      score -= 10
    end
    ace -= 1
  end

  return score
end

def prepare_deck(deck)
  suits = ["A", "S", "C", "D"]
  cards= [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  (0..4).each do 
    suits.each do |s|
      cards.each do |c|
        deck.push(s + c.to_s)
      end
    end
  end
  deck.shuffle!
end


def draw_card(hand, person)
  puts person
  hand.each do |x|
    puts "+----+"
    if x.length == 3
      puts "|#{x} |"
    else 
      puts "|#{x}  |"
    end
    puts "|    |"
    puts "|    |"
    puts "+----+"
  end
  puts "\n\n"
end

def deal(person, deck)
  person.push(deck.shift)
end

def valid_int?(num)
  !/^[0-9]+$/.match(num).nil?
end
 

puts "Welcome to Blackjack\n"
puts "What is your name?"
name = gets.chomp

puts "\nWelcome #{name}\n\n"
money = 1000
wager = 0

loop do
  hands = {:Player => [], :Dealer => []}
  #need to start loop here
  prepare_deck(deck)

  loop do
    puts "You have $#{money} dollars. How much would you like to bid?"
    puts "Please bid in whole dollars only and only input numbers."
    wager = gets.chomp
    if valid_int?(wager) && wager.to_i <= money
      break
    else
      puts "Invalid amount"
    end
  end

  (0..1).each do
    deal(hands[:Player], deck)
    deal(hands[:Dealer], deck)
  end  

  dealer_score = count_hand(hands[:Dealer])
  player_score = count_hand(hands[:Player])


  while player_score < 21
    draw_card(hands[:Player], name)
    puts "#{name} you have a score of #{player_score} would you like to hit?"
    puts "Type Y for Yes"
    hit_answer = gets.chomp.downcase
    if hit_answer == 'y'
      deal(hands[:Player], deck)
      player_score = count_hand(hands[:Player])
    else
      break
    end
  end


  while dealer_score <17
    deal(hands[:Dealer], deck)
    dealer_score = count_hand(hands[:Dealer])
  end

  draw_card(hands[:Player], name)
  draw_card(hands[:Dealer], "Dealer")

  if dealer_score == 21
    money -= wager
    puts "Dealer Blackjack, You Lose!"
  elsif player_score > 21 
    money -= wager.to_i
    puts "You Busted! Dealer #{dealer_score} #{name} #{player_score}"
  elsif player_score == 21 
    money += wager.to_i
    puts "Blackjack You Win! Dealer #{dealer_score} #{name} #{player_score}"
  elsif dealer_score > 21
    money += wager.to_i
    puts "Dealer Busts, You Win! Dealer #{dealer_score} #{name} #{player_score}"
  elsif  dealer_score < player_score
    money += wager.to_i
    puts "You Win! Dealer #{dealer_score} #{name} #{player_score}"
  else
    money -= wager.to_i
    puts "You Lost! Dealer #{dealer_score} #{name} #{player_score}"
  end

  if money >0 
    puts "You have $#{money} left. Press 'Y' if like to play again! 
          Press another key to exit."
    play_again = gets.chomp.downcase
    if play_again != 'y'
      break
    end
  else
    puts "You are out of money. Goodbye"
    break
  end
end 

