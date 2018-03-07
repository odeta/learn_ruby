class Book
  attr_accessor :title

  def title=(value)
    little_words = %w(an and or the a in of)
    words = value.split(" ")
    words = [words[0].capitalize] +
      words[1..-1].map do |word|
        if little_words.include? word
          word
        else
          word.capitalize
        end
      end
    @title = words.join(" ")
  end
end
