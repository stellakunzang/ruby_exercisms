class Acronym

  def self.abbreviate(input)
    phrase = input.gsub('-', ' ').split(" ")
    phrase.map do |word|
      word[0].upcase
    end.join
  end

end
