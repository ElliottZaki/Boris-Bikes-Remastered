require './lib/docking_station'

describe DockingStation do
   #Rspec one-liner syntax: `it` is not available from within an example (e.g. an `it` block) or from constructs that run in the scope of an example (e.g. `before`, `let`, etc). It is only available on an example group (e.g. a `describe` or `context` block) hence why it is here.
    # it { is_expected.to respond_to :release_bike} 

  it 'responds to release_bike method' do
    expect(subject).to respond_to :release_bike

  end

end