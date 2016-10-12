class BeerSong
  def verse(verse_number)
    <<-VERSE
#{nombre_de_conteneurs(verse_number).capitalize} #{conteneur(verse_number)} of beer on the wall, #{nombre_de_conteneurs(verse_number)} #{conteneur(verse_number)} of beer.
#{how_many_on_the_wall(verse_number)}
VERSE
  end

  def conteneur(number)
    case number
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def nombre_de_conteneurs(number)
    return 'no more' if number == 0
    number.to_s
  end

  def how_many_on_the_wall(verse_number)
    if verse_number > 2
      "Take one down and pass it around, #{verse_number - 1} #{conteneur(verse_number - 1)} of beer on the wall."
    elsif verse_number == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    elsif verse_number == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, 1 #{conteneur(verse_number - 1)} of beer on the wall."
    end
  end
end
