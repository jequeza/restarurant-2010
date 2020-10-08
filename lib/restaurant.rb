class Restaurant
  attr_reader :opening_time, :name, :dishes, :time, :closing_time, :time_format

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def closing_time(time)
    @closing_time = "#{opening_time.to_i + time}:00"
  end

  def open_for_lunch?
    if opening_time.to_i > 12
      false
    else
      true
    end
  end

  def menu_dish_names
    dishes.map!(&:upcase)
  end

  def announce_closing_time(add_hours)
    if opening_time.to_i > 12
      @time_format = opening_time.to_i - 12
      "#{name} will be closing at #{time_format + add_hours}:00PM"
    elsif opening_time.to_i < 12
      "#{name} will be closing at #{opening_time.to_i + add_hours}:00AM"
    else
      "#{name} will close at noon."
    end
    end

end
