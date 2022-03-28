require_relative 'bike'

class DockingStation

  attr_reader :bike, :bikes

  def initialize
    @bikes = []
  end 

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station is full" if @bikes.count >= 20
    @bikes << bike
  end



  # def dock(bike, capacity)
  #   if @capacity.length == 20
  #     fail "Docking station is full"  
  #   else
  #     @bike = bike
  #     @capacity += capacity
  #   end
  # end

  # The method below acts in the sameway as an attribute reader above, this is a method that helps read a certain attribute.
  # def bike
  #   @bike
  # end 

end 