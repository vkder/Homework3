class Train
  attr_accessor :speed, :station
  attr_reader :number, :type, :vagon, :route

  def initialize(number, type, vagon, route)
    @number = number
    @type = type
    @vagon = vagon
    @speed = 0
    puts "номер поезда: #{number}, тип: #{type}, количество вагонов: #{vagon}}"
  end

  def up_speed(speed)
    @speed += speed
  end

  def current_speed
    speed
  end

  def stop(speed)
    speed = 0
  end

  def add_vagon
    vagon += vagon if speed == 0
  end

  def delete_vagon
    vagon -= 1 if speed == 0
  end

  def take_route(route)
    @route = route
    station = route.stations.first
    puts "поезд номер #{number} едет по маршруту #{route.stations}"
  end

  def move_next_st
  station = route.stations[route.stations.index(station) + 1]
  end

  def move_prev_st
  station = route.stations[route.stations.index(station) - 1]
  end

  def current_station
  station
  end
end

