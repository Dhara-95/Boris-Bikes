require 'docking_station.rb'

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it 'raises an error when there is already a bike in docking station' do
      expect {subject.dock Bike.new}.to raise_error 'At full capacity'
    end
  end
end
