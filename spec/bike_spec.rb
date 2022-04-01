require './lib/bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it { is_expected.to respond_to :broken? }

  describe '#report_broken? method' do
    it 'tells the user if bike is broken' do
      subject.broken?
      expect(subject).not_to be_broken
    end

    it 'can report the status of a bike' do
      subject.report_broken(true)
      subject.broken?
      expect(subject).to be_broken
    end
  end
end