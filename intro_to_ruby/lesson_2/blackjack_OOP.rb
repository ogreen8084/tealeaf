#add functionaility, dealer hand first card facedown
#hit the deck
#multi-player

class Card
  attr_accessor  :suit, :value
  def initialize(s, v)
    @suit = s
    @value = v
  end

  def to_s
    puts "This is the card: [#{suit}, #{value}]"
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2','3', '4', '5', '6','7','8','9','10','10','J','Q','K','A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    self.scramble
  end

  def scramble
    cards.shuffle!
  end

  def deal
    cards.pop
  end

  def count_hand(hand)
     score = 0
     ace = 0
     hand.each do |c|
       if c.value == "J" || c.value == "Q" || c.value == "K" 
         score += 10
       elsif c.value == "A"
         ace += 1
         score += 11
       else
         score += c.value.to_i
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
end

class Player
  attr_accessor :hand
  attr_reader :name
  def initialize(n)
    @name = n
    @hand = []
  end

  def player_turn(deck)
    self.hand << deck.deal
  end
end

class Dealer
  attr_accessor :hand
  def initialize
    @hand = []
  end

  def dealer_turn(deck)
    self.hand << deck.deal
  end
end

#runs the rest of the things
class Blackjack
  player_score = 0
  dealer_score = 0
  def initialize
    @player = Player.new("Bob")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  #where we run the game, runs the application
  def run
#    players.each do |player|  RESTORE MULTI-PLAYER FUNCTIONALITY
    @player.player_turn(@deck)
    @player.player_turn(@deck)
    puts "#{@player.name} has #{@deck.count_hand(@player.hand)}"
#    end
    @dealer.dealer_turn(@deck)
    @dealer.dealer_turn(@deck)
    @deck.count_hand(@dealer.hand)
    #spot to start loop for multiplyaer
    if @deck.count_hand(@player.hand) != 21
      while @deck.count_hand(@player.hand) <21
        begin
          puts "#{@player.name} you have #{@deck.count_hand(@player.hand)} like to hit your hand? Press (y/n)"
          answer = gets.chomp.downcase
        end until ['y','n'].include?(answer)
        if answer == 'y'
          @player.player_turn(@deck)
        else
          break
        end
      end
    end

    if @deck.count_hand(@dealer.hand) < 17
      while @deck.count_hand(@dealer.hand) < 17
        @dealer.dealer_turn(@deck)
      end
    end
     

    if @deck.count_hand(@player.hand) == 21 && @deck.count_hand(@dealer.hand) == 21
      puts "Double Blackjack! It's a push!"
    elsif @deck.count_hand(@player.hand) == 21
      puts "Blackjack! #{@player.name} won!"
    elsif @deck.count_hand(@dealer.hand) == 21
      puts "Blackjack! Dealer won!"
    elsif @deck.count_hand(@player.hand) > 21
      puts "Bust! #{@player.name} lost!"
    elsif @deck.count_hand(@dealer.hand) > 21
      puts "Bust! Dealer lost!"
    elsif @deck.count_hand(@player.hand) > @deck.count_hand(@dealer.hand)
      puts "#{@player.name} wins!"
    elsif @deck.count_hand(@player.hand) == @deck.count_hand(@dealer.hand)
      puts "It's a tie!"
    else
      puts "Dealer wins!"
    end
    #who_won?
  end
end

game = Blackjack.new.run
