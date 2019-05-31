class Route
  attr_reader :stations

  def initialize(first_st, second_st)
    @stations = [first_st, second_st]
    puts "Route created from #{first_st} to #{second_st}"
  end

  def add_station(station) #добавляем промежуточные станции
    stations.insert(-2, station)
  end

  def remove_station(station)
    stations.delete(station)
  end

  def show_route
    puts stations
  end
end
