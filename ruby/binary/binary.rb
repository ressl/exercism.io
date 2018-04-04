# Class Binary
class Binary
  def self.to_decimal(binary)
    raise ArgumentError unless binary =~ /^[0-1]*$/
    binary.chars.zip((binary.size - 1).downto(0)).sum { |f, s| f.to_i * (2**s.to_i) }
  end
end

module BookKeeping
  VERSION = 3
end
