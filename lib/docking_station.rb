require_relative 'bike'

class DockingStation 
  DEFAULT_CAPACITY = 20
  attr_reader :stored_bikes, :bike, :capacity
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end 

  def release_bike
    empty?
    check_status
    @stored_bikes.pop
  end

  def dock(bike)
    full?
    @stored_bikes << bike
  end


  private

  def full?
    fail "Docking station is full" if @stored_bikes.count >= @capacity
  end

  def empty?
    fail "No bikes available" if @stored_bikes.empty?
  end

  def check_status
    fail "Docked bike(s) are currently broken" if @stored_bikes.last.working == false
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