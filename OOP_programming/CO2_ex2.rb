module Turbocharger
  def turbo
    puts "I have a turbocharger"
  end
end



class Vehicle
  attr_accessor :color, :model
  attr_reader :year
  @@number_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    @@number_of_vehicles +=1
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
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
    puts "Your car is a #{self.year} model so it is #{years_old} years old."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/ gallons} miles per gallon of gas"
  end



  private 
  def years_old
    Time.now.year - self.year.to_i
  end
end




class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  include Turbocharger


  def to_s
    print "You have a #{self.color} #{self.year} #{self.model} car."
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2


end


pinto = MyCar.new('1985', 'Orange & Rust', 'Pinto')

pinto.paint_color('Yellow')
pinto.show_color
pinto.show_year
pinto.spray_paint('Green')

puts pinto::turbo


puts MyCar.ancestors
puts ''
puts MyTruck.ancestors
puts ''