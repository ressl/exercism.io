# Hamming class
class Hamming
  def self.compute(dna01, dna02)
    raise ArgumentError unless dna01.length == dna02.length
    dna01.chars.zip(dna02.chars).count { |duo| duo.first != duo.last }
  end
end

module BookKeeping
  VERSION = 3
end