class Car

  def initialize
    @current_speed = 0
    @make
    @model
    @year
    @lights = "off"
  end

  def current_speed
    @current_speed
  end

  def make
    @make
  end

  def make=(new_make)
    @make = new_make
  end

  def model
    @model
  end

  def model=(new_model)
    @model = new_model
  end

  def year
    @year
  end

  def year=(new_year)
    @year = new_year
  end

  def accelerate
    @current_speed = @current_speed + 10
  end

  def decelerate
    @current_speed = @current_speed - 7
    if @current_speed < 0
      @current_speed = 0
    end
  end

  # Purpose: return "on"/"off" depending on @lights_on
  # def lights
    # @lights_off = true
    # @lights_on = false
    #
    # if @lights_off == true
    #   "off"
    # else
    #   # @lights_on = false
    #   "on"
    # end
    def lights
      if @lights == "off"
        @lights = "on"
      else
       @lights = "off"
      end
    end

    def lights_on
      @lights
    end

end
