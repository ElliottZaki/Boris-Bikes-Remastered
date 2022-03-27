require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  # The method below acts in the sameway as an attribute reader above, this is a method that helps read a certain attribute.
  # def bike
  #   @bike
  # end 

end 