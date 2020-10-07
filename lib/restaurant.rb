class Restaurant
  attr_reader :opening_time
  attr_reader :name
  attr_reader :dishes
  attr_reader :time
  attr_reader :closing_time


  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    @time = time
    @closing_time = @opening_time.to_i + @time
  end


end
