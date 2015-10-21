class Mycar
  attr_accessor :year, :color, :model
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake(number)
    if @speed - number > 0
      @speed -= number
    else 
      speed = 0 #can't go less than 0 miles an hour
    end
  end

  def current_speed
    puts "You are going #{@speed} miles per hour."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def paint_color(new_color)
    self.color = new_color
    puts "The color is now #{self.color}!"
  end

  def show_color
    puts "You car is colored #{self.color}"
  end

  def show_year
    puts "Your car is a #{self.year} model."
  end
end


pinto = Mycar.new('1985', 'Orange & Rust', 'Pinto')

pinto.paint_color('Yellow')
pinto.show_color
pinto.show_year
