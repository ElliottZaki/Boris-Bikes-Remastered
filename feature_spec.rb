#Release bike feature test
require './lib/docking_station'
docking_station = DockingStation.new
bike = Bike.new
docking_station.dock(bike)
bike = Bike.new
docking_station.dock(bike)
bike = docking_station.release_bike

#Depositing bike from Van to Garage feature test
require './lib/docking_station'
dockingstation = DockingStation.new
van = Van.new
garage = Garage.new
b1 = Bike.new(false)
b2 = Bike.new(false)
b3 = Bike.new
dockingstation.dock(b1)
dockingstation.dock(b2)
dockingstation.dock(b3)
dockingstation.repair_bike(van)
van.deliver(garage, dockingstation)

#Fixing bike feature test
garage.fix