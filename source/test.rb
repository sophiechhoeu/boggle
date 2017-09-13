class Car

def initialize
@make = make
@model= model
@year = year
end

  attr_accessor :name, :model, :year

end

list = []
list << Car.new("Honda", "Accord", 2016)
list << Car.new("Toyota", "Camry", 2015)
list << Car.new("Nissan", "Altima", 2014)

p list.map {|p| p.model}
