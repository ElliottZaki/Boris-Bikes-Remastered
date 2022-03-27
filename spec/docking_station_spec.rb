require './lib/docking_station'

describe DockingStation do
   #Rspec one-liner syntax: `it` is not available from within an example (e.g. an `it` block) or from constructs that run in the scope of an example (e.g. `before`, `let`, etc). It is only available on an example group (e.g. a `describe` or `context` block) hence why it is here.
    # it { is_expected.to respond_to :release_bike } 
  
  it 'responds to bike method' do
    expect(subject).to respond_to :bike
  end

  it 'responds to release_bike method' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject).to respond_to(:dock).with(1).argument
    expect(subject.dock(bike)).to eq (bike)
  end

end