require './lib/docking_station'

describe DockingStation do
   #Rspec one-liner syntax: `it` is not available from within an example (e.g. an `it` block) or from constructs that run in the scope of an example (e.g. `before`, `let`, etc). It is only available on an example group (e.g. a `describe` or `context` block) hence why it is here.
    # it { is_expected.to respond_to :release_bike } 
  it 'responds to bike object' do
    expect(subject).to respond_to :bike
  end
  
  describe '#release_bike' do
    it 'responds to release_bike method' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(bike).to be_working
      expect(subject.release_bike).to eq (bike)
    end

    it 'raises an error if no bikes are available' do
      expect{ subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      bike = Bike.new
      expect(subject).to respond_to(:dock).with(1).argument
      expect(subject.dock(bike)).to eq (bike)
    end
  end

end