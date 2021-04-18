
class Card
	SUITS = [:spade, :heart, :diamond, :club]
	RANKS = [:ace, :king, :queen, :jack, :ten, :nine, :eight, :seven, :six, :five, :four, :three, :two]

	attr_reader :rank, :suit
    
	def initialize rank, suit
		@rank, @suit = rank, suit
        #@trump = trump #important card
	end

	def equal?(other_card)
		rank == other_card.rank && suit == other_card.suit
	end

	def higher?(other_card)
		RANKS.index(rank) < RANKS.index(other_card.rank) && SUITS.index(suit) < SUITS.index(other_card.suit)
	end

	def lower?(other_card)
		RANKS.index(rank) > RANKS.index(other_card.rank) && SUITS.index(suit) > SUITS.index(other_card.suit)
	end
end

puts Card.new(:ace, :spade).equal? Card.new(:ace, :spade)
puts Card.new(:ace, :spade).higher? Card.new(:jack, :heart)
puts Card.new(:ace, :spade).lower? Card.new(:jack, :spade)