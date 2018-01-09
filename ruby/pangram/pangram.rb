# Class Pangram
class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |c| phrase.downcase.each_char.include?(c) }
  end
end

module BookKeeping
  VERSION = 6
end
