require './lib/docking_station'

describe DockingStation do
  let(:docking_station) { double(DockingStation::DEFAULT_CAPACITY) }
   #Rspec one-liner syntax: `it` is not available from within an example (e.g. an `it` block) or from constructs that run in the scope of an example (e.g. `before`, `let`, etc). It is only available on an example group (e.g. a `describe` or `context` block) hence why it is here.
    # it { is_expected.to respond_to :release_bike } 
  it 'responds to bike object' do
    expect(subject).to respond_to :bikes
  end

  #Write a feature test that allows a user to set a @capacity instance variable when DockingStation.new is called.
  # it 'can set a @capacity instance variable when DockingStation.new is called' do
  # # it { is_expected.to have_attributes(:capacity) }
  #   # dockingstation = DockingStation.new(2)
  #   # 2.times { subject.dock(Bike.new) }
  #   expect(subject).to eq (DockingStation::capacity)
  #   # expect(subject).to respond_to :capacity
  # end

  describe 'initialization' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'has a variable capacity' do
      docking_station = DockingStation.new(30)
      30.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error("Docking station is full")
    end
  end
  
  describe '#release_bike' do
    it 'responds to release_bike method' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a working bike' do
      bikes = Bike.new
      subject.dock(bikes)
      expect(bikes).to be_working
      expect(subject.release_bike).to eq (bikes)
    end

    it 'raises an error if no bikes are available' do
      expect{ subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      bikes = Bike.new
      expect(subject).to respond_to(:dock).with(1).argument
      expect(subject.dock(bikes)).to eq ([bikes])
    end


    it 'raises an error if Docking station is full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect{ subject.dock(Bike.new) }.to raise_error("Docking station is full")
    end
  end

end