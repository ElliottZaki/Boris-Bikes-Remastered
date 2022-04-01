require './lib/docking_station'

describe DockingStation do
  let(:docking_station) { double(DockingStation::DEFAULT_CAPACITY) }
  let(:bike) { double :bike }
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
      30.times { docking_station.dock double(:bike) }
      expect{ docking_station.dock double(:bike) }.to raise_error("Docking station is full")
    end
  end
  
  describe '#release_bike' do
    it 'responds to release_bike method' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a working bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

    it 'raises an error if no bikes are available' do
      expect{ subject.release_bike }.to raise_error("No bikes available")
    end

    it 'raises an error if docked bikes are currently broken' do
      allow(bike).to receive(:report_broken).and_return(true)
      subject.dock(bike)
      expect{ subject.release_bike }.to raise_error("Docked bike(s) are currently broken")
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks a bike' do
      expect(subject.dock(bike)).to eq ([bike])
    end

    it 'docks broken bikes' do
      allow(bike).to receive(:report_broken).and_return(true)
      subject.dock(bike)
      expect(subject.bikes).to eq ([bike])
    end

  


    it 'raises an error if Docking station is full' do
      subject.capacity.times { subject.dock double(:bike) }
      expect{ subject.dock double(:bike) }.to raise_error("Docking station is full")
    end
  end

end