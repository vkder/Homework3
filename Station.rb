class Station
  attr_reader :station_name

  def iniatilize(station_name)
    @station_name = station_name
    train_list = []
  end

  def new_train(train_name) #принимаем поезда на станцию
    @@train_name = train_name
    train_list << train_name #заполняем массив
  end

  def show_train_list_and_type(type)
    @train_list_pass.each { |train_name|
    puts train_name }
    counter = 0
    @train_list.each {|train| counter += 1 if train.type.eql?(type) }
    puts "Количество поездов на станции #{station_name} типа #{type} равно #{counter}."
  end

  def send_train
    @train_list.delete(train_list)
  end
end
