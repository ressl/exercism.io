# Class BeerSong
class BeerSong
  def verse(number)
    number_minus = number - 1
    zero = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    one = "#{number} #{number.eql?(1) ? 'bottle' : 'bottles'} of beer on the wall, #{number} #{number.eql?(1) ? 'bottle' : 'bottles'} of beer.\n"
    two = "Take #{number_minus.zero? ? 'it' : 'one'} down and pass it around, #{!number_minus.zero? ? number_minus : 'no more'} #{number_minus.eql?(1) || number.zero? ? 'bottle' : 'bottles'} of beer on the wall.\n"

    number.zero? ? zero : (one + two)
  end

  def verses(max, min)
    all = []
    max.downto(min).each { |number| all << verse(number) }
    all.join("\n")
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
