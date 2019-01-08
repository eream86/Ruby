

class Vehicle
end

my_vehicle = Vehicle.new
p my_vehicle

class Car < Vehicle
  attr_accessor :wheels, :lights, :turnsignal, :speed
  def initialize(modelyear, make, model)
    @model = model
    @make = make
    @modelyear = modelyear
    @wheels = 4
    @lights = "off"
    @turnsignal = 2
    @speed = 0

  end
  def display_wheels
    @wheels
  end
  def carinfo
    puts "carinfo #{@modelyear}, #{@make}, #{@model}"
  end
end

class Tesla < Car
  attr_accessor :wheels, :lights, :turnsignal, :speed

  def display_modelyear
    @modelyear
  end
  def display_lights
    @lights = @lights == "off" ? "on" : "off"
    puts @lights
  end
  def display_turnsignal
    if @turnsignal % 2 == 0
      puts "left"
    elsif @turnsignal % 2 == 1
      puts "right"
    else
      puts "off"
    end
  end
  def display_accelerator
    @speed = @speed + 10
    puts @speed
  end
  def display_brake
    @speed = @speed - 7
    puts @speed
  end
end




class Tata < Car
  attr_accessor :wheels, :lights, :turnsignal, :speed

  def display_modelyear
    @modelyear
  end
  def display_lights
    @lights = @lights == "off" ? "on" : "off"
    puts @lights
  end
  def display_turnsignal
    if @turnsignal % 2 == 0
      puts "left"
    elsif @turnsignal % 2 == 1
      puts "right"
    else
      puts "off"
    end
  end
  def display_accelerator
    @speed = @speed + 2
    puts @speed
  end
  def display_brake
    @speed = @speed - 1.25
    puts @speed
  end
end


class Toyota < Car
  attr_accessor :wheels, :lights, :turnsignal, :speed

  def display_modelyear
    @modelyear
  end
  def display_lights
    @lights = @lights == "off" ? "on" : "off"
    puts @lights
  end
  def display_turnsignal
    if @turnsignal % 2 == 0
      puts "left"
    elsif @turnsignal % 2 == 1
      puts "right"
    else
      puts "off"
    end
  end
  def display_accelerator
    @speed = @speed + 7
    puts @speed
  end
  def display_brake
    @speed = @speed - 5
    puts @speed
  end
end

# my_car = Car.new(2008)
# p my_car
#
# my_tesla = Tesla.new(2019)
# p my_tesla
# my_tesla.display_lights
# my_tesla.display_lights
# my_tesla.display_turnsignal
# my_tesla.display_accelerator
#
# my_tata = Tata.new(2006)
# my_tata.display_accelerator
# my_tata.display_brake


my_tesla = Tesla.new(2018, "Tesla", "Model X")
p my_tesla.carinfo


my_toyota = Toyota.new(2017, "Toyota", "Corrola")
p my_toyota.carinfo
