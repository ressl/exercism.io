# Class Clock
class Clock
  def initialize(hour, minutes)
    @minutes = (hour * 60) + minutes
  end

  def self.at(hour, minutes = 0)
    Clock.new(hour, minutes)
  end

  def to_s
    h = (minutes / 60)
    m = (minutes % 60)
    format('%02d:%02d', h, m)
  end

  def +(other)
    Clock.at(0, minutes + other)
  end

  def -(other)
    Clock.at(0, minutes - other)
  end

  def ==(other)
    minutes == other.minutes
  end

  protected

  def minutes
    @minutes % (24 * 60)
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
