class Timer

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 60 / 60
    minutes = (@seconds - hours * 60 * 60) / 60
    seconds = @seconds - minutes * 60 - hours * 60 * 60
    @time_string = "%02i:%02i:%02i" % [hours, minutes, seconds]
  end

  def seconds=(value)
    @seconds = value
  end

  def seconds
    @seconds
  end
end
