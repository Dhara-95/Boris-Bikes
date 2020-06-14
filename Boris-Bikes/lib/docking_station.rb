require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = bike
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'At full capacity' if @bike
    @bike = bike
  end
end

docking_station = DockingStation.new
