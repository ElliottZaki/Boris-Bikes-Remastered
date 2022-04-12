require_relative 'garage'

class Van

attr_reader :stored_cargo

  def initialize()
    @stored_cargo = []
  end 

  def collect(bike)
    @stored_cargo << bike
  end

  def deliver(garage, dockingstation)
    @stored_cargo.each do |x|
      if x.working == false
        garage.dock(x) 
      else
        dockingstation.dock(x)
      end
    end
    @stored_cargo.clear
  end 
  

end 