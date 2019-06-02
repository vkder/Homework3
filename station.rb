class Station
  attr_reader :station_name

  def iniatilize(name)
    @name = name 
    trains = []
    types = []
  end

  def new_train_and_type(train, type) 
    trains << train 
    types << type
    puts "на станцию #{name} пришел поезд № #{train.number}"
  end

  def show_train_list_and_type
    @trains.each { |train_name|
    puts train_name }
    
    types.inject(Hash.new(0) { |train, type| train[type] += 1 ; train }
  end

  def send_train(train)
    @trains.delete(train)
  end

end