# Class BeerSong
class BeerSong
  def verses(max, min)
    max.downto(min).map { |num| verse(num) }.join("\n")
  end

  def verse(num)
    num_minus = num - 1
    one = "#{num} #{bottle(num)} of beer on the wall, " \
          "#{num} #{bottle(num)} of beer.\n"
    two = "Take #{num_minus.zero? ? 'it' : 'one'} down and pass it around, " \
          "#{!num_minus.zero? ? num_minus : 'no more'} " \
          "#{num_minus.eql?(1) || num.zero? ? 'bottle' : 'bottles'} " \
          "of beer on the wall.\n"

    num.zero? ? zero : (one + two)
  end

  def bottle(num)
    num.eql?(1) ? 'bottle' : 'bottles'
  end

  def zero
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end

module BookKeeping
  VERSION = 3 # Where the version num matches the one in the test.
end
