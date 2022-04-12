require './lib/docking_station'

describe DockingStation do
  let(:docking_station) { double(DockingStation::DEFAULT_CAPACITY) }
  let(:bike) { double :bike }
  let(:van) { double :van }
   #Rspec one-liner syntax: `it` is not available from within an example (e.g. an `it` block) or from constructs that run in the scope of an example (e.g. `before`, `let`, etc). It is only available on an example group (e.g. a `describe` or `context` block) hence why it is here.
    # it { is_expected.to respond_to :release_bike } 
  it 'responds to stored_bikes array' do
    expect(subject).to respond_to :stored_bikes
  end

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
      bike = double(:bike, working: true)
      subject.dock bike
      expect(subject.release_bike).to be bike
    end

    it 'raises an error if no bikes are available' do
      expect{ subject.release_bike }.to raise_error("No bikes available")
    end

    it 'raises an error if docked bikes are currently broken' do
      bike = double(:bike, working: false)
      subject.dock(bike)
      expect{ subject.release_bike }.to raise_error("Docked bike(s) are currently broken")
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks a bike' do
      expect(subject.dock(bike)).to eq ([bike])
    end

    it 'is able to dock both working and broken bikes' do
      working_bike = double(:bike, working: true)
      broken_bike = double(:bike, working: false)    
      # allow(bike).to receive(:report_broken).and_return(true) - Rspec shorthand syntax is used above and this line is long format.
      subject.dock(working_bike)
      subject.dock(broken_bike)
      expect(subject.stored_bikes).to eq ([working_bike, broken_bike])
    end

    it 'raises an error if Docking station is full' do
      subject.capacity.times { subject.dock double(:bike) }
      expect{ subject.dock double(:bike) }.to raise_error("Docking station is full")
    end
  end

  describe '#repair_bike' do
    it 'calls a repair van to collect all broken bikes from Docking station' do
      working_bike = double(:bike, working: true)
      broken_bike = double(:bike, working: false)
      van = double(:van)
      subject.dock(working_bike)
      subject.dock(broken_bike)
      allow(van).to receive(:collect)
      allow(van).to receive(:stored_cargo)
      subject.repair_bike(van)
      p subject
      p van
      p van.stored_cargo
      # expect(van.stored_cargo).to eq ([broken_bike])  
      expect(subject.stored_bikes).to eq ([working_bike])
    end
  end


end