class Raindrops

  def self.convert(number)
    sound = String.new
    sound += "Pling" if number % 3 == 0
    sound += "Plang" if number % 5 == 0
    sound += "Plong" if number % 7 == 0
    sound += number.to_s if sound.empty?
    return sound
  end

end
  #   if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
  #     "PlingPlangPlong"
  #   elsif number % 3 == 0 && number % 5 == 0
  #     "PlingPlang"
  #   elsif number % 3 == 0 && number % 7 == 0
  #     "PlingPlong"
  #   elsif number % 5 == 0 && number % 7 == 0
  #     "PlangPlong"
  #   elsif number % 3 == 0
  #     "Pling"
  #   elsif number % 5 == 0
  #     "Plang"
  #   elsif number % 7 == 0
  #     "Plong"
  #   else
  #     number.to_s
  #   end
  # end
