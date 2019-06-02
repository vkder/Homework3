class Train
  attr_accessor :speed, :station
  attr_reader :number, :type, :vagon, :route, :index

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

  def stop
    speed = 0
  end

  def add_vagon
    vagon += vagon if speed == 0
  end

  def delete_vagon
    if vagon.zero?
      puts"Error, vagonov bolwe ne ostalos"
    else
     vagon -= 1 if speed == 0
     end
   end

  def take_route(route)
    @route = route
    @index = 0
  end

  def current_station
    @index = 0
  end

  def last_station?
    current_station == route.stations.last
  end

  def first_station?
    current_station == route.stations[0]
  end


  def next_station
    route.stations[@index + 1] unless last_station?
  end

  def last_station
    while @index >= 0 do
      route.stations[@index - 1] unless first_station?
    end
  end


  def move_next
    current_station.send_a_train(self)
    next_station.take_the_train(self)
    @index +=1
  end

  def move_back
    current_station.send_a_train(self)
    last_station.take_the_train(self)
    @index -=1
  end
end