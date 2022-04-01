class Bike

  attr_reader :working

  def initialize(working=true)
    @working = working
  end

  def working?
    @working
  end

  def broken?
    !@working
  end

  def report_broken(status)
    if status == true
      @working = false
    elsif status == false
      @working = true
    end
  end

end