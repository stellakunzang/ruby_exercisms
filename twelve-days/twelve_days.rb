require 'pry'

class TwelveDays

  @days = {"first" => 1, "second" => 2, "third" => 3, "fourth" => 4, "fifth" => 5, "sixth" => 6, "seventh" => 7, "eighth" => 8, "ninth" => 9, "tenth" => 10, "eleventh" => 11, "twelfth" => 12}
  @gifts = ["a Partridge in a Pear Tree", "two Turtle Doves", "three French Hens", "four Calling Birds", "five Gold Rings", "six Geese-a-Laying", "seven Swans-a-Swimming", "eight Maids-a-Milking", "nine Ladies Dancing", "ten Lords-a-Leaping", "eleven Pipers Piping", "twelve Drummers Drumming"]

  def self.song
    song = ""
    @days.each do |day, digit|
      song += make_song(day, digit)
    end
    song
  end

  def self.make_song(day, digit)
    verse = "On the " + day + " day of Christmas my true love gave to me: "
    gifts = reverse_gifts(digit)
    if day != "first" && day != "twelfth"
      verse += pile_gifts(gifts) + double_line_break
    elsif day == "first"
      verse += @gifts.first + "." + double_line_break
    else
      verse += pile_gifts(gifts) + "\n"
    end
    verse
  end

  def self.reverse_gifts(digit)
    @gifts[0..(digit - 1)].reverse
  end

  def self.pile_gifts(gifts)
    gifts[0..-2].join(', ') + ", and " + gifts[-1] + '.'
  end

  def self.double_line_break
    "\n" + "\n"
  end
end
