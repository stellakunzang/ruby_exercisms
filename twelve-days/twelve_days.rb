require 'pry'

class TwelveDays

  def self.song
    # instantiate Verse by reading txt file
    # save verses to instance variable as hash with digit as key
    # access line using digit
    # iterate adding one line each rotation
  end

  def self.verses
    @verses = {}
    verses = ["verse 1", "verse 2", "verse 3"]
    verse_number = 1
    verses.map do |verse|
      @verses[verse_number] = verse
      verse_number += 1
    end
    @verses
  end
end

# class Verse
#   def initialize(verse)
#   end
# end
