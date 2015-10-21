puts "Welcome to Blackjack!"

suits = ["H", "D", "S", "C"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

deck = suits.product(cards)
deck.shuffle!

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

puts "my cards is: " + mycards.to_s
puts "dealer cards is: " + dealercards.to_s