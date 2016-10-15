class BeerSong
  def lyrics
    verses(99,0)
  end

  def verses(first,last)
    song = []
    (last..first).to_a.reverse.each do |verse_number|
      song << verse(verse_number)
    end
    song.join("\n")
  end

  def verse(verse_number)
    case
    when verse_number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when verse_number == 1
      "#{verse_number} #{container(verse_number)} of beer on the wall, #{verse_number} #{container(verse_number)} of beer.\n"\
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{verse_number} #{container(verse_number)} of beer on the wall, #{verse_number} #{container(verse_number)} of beer.\n"\
      "Take one down and pass it around, #{verse_number - 1} #{container(verse_number - 1)} of beer on the wall.\n"
    end
  end

  def container(number)
    return "bottles" if number > 1
    "bottle"
  end
end
class BookKeeping
  VERSION = 2
end
