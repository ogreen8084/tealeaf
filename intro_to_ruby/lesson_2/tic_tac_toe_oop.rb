#Tow approach to OOP
#1. extract classes and objects from existing code.
#2. Write out a description of the program then extract nouns from description and gropu common verbs into the nouns

# What is a tic tac toe game?

#board game with two players

#player/players

#draw a field with nine slots. We start with an empty 3 x 3 board.
#one person 'X' and one person 'O'.
#players take turns making moves in empty squares until one person gets 3 in a row or they
#run out of spaces. "x goes first."

class Board

  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9],[1,5,9],[3,5,7]]

  def initialize
    @data = {}
    (1..9).each {|position| @data[position] = Square.new(' ')}
  end

  def draw
    system 'clear' 
    puts 
    puts "        |     |" 
    puts "        |     |" 
    puts " #{@data[1].value}      |  #{@data[2].value}  |  #{@data[3].value}"
    puts "  --------------------"
    puts "        |     |"
    puts " #{@data[4].value}      |  #{@data[5].value}  |  #{@data[6].value}"
    puts "        |     |"    
    puts "  --------------------"    
    puts "        |     |"
    puts " #{@data[7].value}      |  #{@data[8].value}  |  #{@data[9].value}"
    puts "        |     |"
    puts 

  end

  def all_squares_marked?
    empty_squares.size == 0
  end  
    
  def empty_squares
    @data.select {|_, square| square.empty? }.values   
  end

  def empty_positions
    @data.select {|_, square|!square.occupied?}.keys
  end

  def mark_squares(position, marker)
    @data[position].mark(marker)
  end

  def winning_condition?(marker)
    WINNING_LINES.each do |line|
      return true if @data[line[0]].value == marker && @data[line[1]].value == marker &&
       @data[line[2]].value == marker
      end
      false
  end
end


class Square
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def mark(marker)
    @value = marker
  end

  def occupied?
    @value != ' '
  end


  def empty?
    @value == ' '
  end
end


class Player
  attr_reader :marker, :name
  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end


board = Board.new
board.draw

class Game
  def initialize
    @board = Board.new
    @human = Player.new("Chris", "X")
    @computer = Player.new("R2D2", "O")
    @current_player = @human
  end

  def current_player_marks_square
    if @current_player == @human
      begin
        puts "Choose a position (1-9):"
        position = gets.chomp.to_i
      end until @board.empty_positions.include?(position)
    else
      position = @board.empty_positions.sample
    end

    @board.mark_squares(position, @current_player.marker )
  end

  def current_player_win?
    @board.winning_condition?(@current_player.marker)
  end

  def alternate_player
    if @current_player == @human
      @current_player = @computer
    else
      @current_player = @human
    end
  end

  def play 
    @board.draw
    loop do
      current_player_marks_square
      @board.draw
      if current_player_win?
        puts "The winner is #{@current_player.name}"
        break
      elsif @board.all_squares_marked?
        puts "It's a tie!"
        break
      else
        alternate_player
      end
    end
  end
end


Game.new.play





