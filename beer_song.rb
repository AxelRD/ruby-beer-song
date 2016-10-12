class BeerSong
  def verse(verse_number)
    <<-VERSE
#{verse_number} #{ verse_number == 1 ? 'bottle' : 'bottles'} of beer on the wall, #{verse_number} #{ verse_number == 1 ? 'bottle' : 'bottles'} of beer.
#{how_many_on_the_wall(verse_number)}
VERSE
  end

  def how_many_on_the_wall(verse_number)
    if verse_number > 2
      "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall."
    elsif verse_number == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    else
      "Take one down and pass it around, 1 bottle of beer on the wall."
    end
  end
end
