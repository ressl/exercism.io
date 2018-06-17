# Class
class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    word_counts = Hash.new(0)
    @word.split(' ').each { |w| word_counts[w] += 1 }
    word_counts
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
