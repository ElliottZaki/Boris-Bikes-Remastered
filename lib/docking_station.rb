require_relative 'bike'

class DockingStation 
  DEFAULT_CAPACITY = 20
  attr_reader :bike, :bikes, :capacity

#  
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end 

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private

  def full?
    fail "Docking station is full" if @bikes.count >= @capacity
  end

  def empty?
    fail "No bikes available" if @bikes.empty?
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