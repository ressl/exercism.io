# Class Pangram
class Pangram
  def initialize(phrase)
    @phrase = phrase
  end

  def self.pangram?(phrase)
    letters = phrase.downcase.split('').uniq.sort.select { |c| ('a'..'z').cover?(c) }
    true if letters.count >= 26
  end
end

module BookKeeping
  VERSION = 6
end
