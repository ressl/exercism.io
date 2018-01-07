# Class Raindrops
class Raindrops
  RAINDROPS_MAP = {
    '3' => 'Pling',
    '5' => 'Plang',
    '7' => 'Plong'
  }.freeze

  def self.convert(number)
    return number.to_s unless valid?(number)
    factors(number).map(&:to_s).each.map { |n| RAINDROPS_MAP[n] }.join
  end

  def self.factors(number)
    (1..number).select { |n| (number % n).zero? }
  end

  def self.valid?(number)
    factors(number).map(&:to_s).each.any?(&RAINDROPS_MAP.method(:include?))
  end

  private_class_method :valid?
  private_class_method :factors
end

module BookKeeping
  VERSION = 3
end
