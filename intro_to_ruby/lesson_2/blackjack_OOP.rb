class Card
  attr_accessor  :suit, :value
  def initialize(s, v)
    @suit = s
    @value = v
  end

  def to_s
    "This is the card! #{suit}, #{value}"
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H'. 'D', 'S', 'C'].each do |suit|
      ['2','3', '4', '5', '6','7','8','9','10','10','J','Q','K','A']
        @cards << Card.new(suit, face_value)
      end
    end
    scramble
  end

  def scramble
    cards.shuffle!
  end

  def deal
    cards.pop
  end
end

class Player
  def initialize(n)

end

class Dealer

end

#runs the rest of the things
class Blackjack
  def initalize
    @player = Player.new("Bob")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  #where we run the game, runs the application
  def run
    deal_cards
    show_flow
    players.each do |player|
      player_turn(player)
    end
    dealer_turn
    who_won?
  end
end