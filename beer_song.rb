class BeerSong

  def verses(first,last)
    song = []
    (last..first).to_a.reverse.each do |verse_num|
      song << verse(verse_num)
    end
    song.join("\n")
  end

  def verse(verse_number)
    <<-VERSE
#{nombre_de_conteneurs(verse_number).capitalize} #{conteneur(verse_number)} of beer on the wall, #{nombre_de_conteneurs(verse_number)} #{conteneur(verse_number)} of beer.
#{how_many_on_the_wall(verse_number)}
VERSE
  end

  def how_many_on_the_wall(verse_number)
    "#{take_it_or_go_to_the_store(verse_number)} #{how_many_left(verse_number)} #{conteneur(how_many_left(verse_number))} of beer on the wall."
  end

  def take_it_or_go_to_the_store(verse_number)
    return 'Go to the store and buy some more,' if verse_number == 0
    return 'Take it down and pass it around,' if verse_number == 1
    'Take one down and pass it around,'
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

  def supprime_conteneur(verse_number)
    return 'one' if verse_number > 2
    'it'
  end

  def how_many_left(verse_number)
    return 99 if verse_number == 0
    return 'no more' if verse_number == 1
    (verse_number - 1)
  end

end
