
class Garage

  attr_reader :stored_vehicles, :fixed_vehicles

  def initialize()
    @stored_vehicles = []
    @fixed_vehicles = []
  end

  def dock(bike)
    @stored_vehicles << bike
  end

  def fix
    @stored_vehicles.select do |x| 
      if x.working == false
        x.working=true
      else
        check_status
      end
    end
  end

  private

  def check_status
    fail "All bikes are fully functional, please return them to the Dockingstation" if @stored_vehicles.last.working == true
  end

end