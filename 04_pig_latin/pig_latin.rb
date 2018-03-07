#write your code here

class String
  def first_letter
    self[0, 1]
  end
end

$vowels = ['a', 'e', 'i', 'o', 'u']

def translate s
  words = s.split.map do |word|
    if vowel? word.first_letter
      word + "ay"
    elsif not vowel? word.first_letter
      current = word.first_letter
      i = 1
      start_of_word = []
      # include words starting with - ch thr sch qu squ
      while ( (not vowel? current) || %w(u).include?(current) )
        start_of_word.push current
        current = word[i, 1]
        i = i + 1
      end
      word[(i-1)..-1] + start_of_word.join + "ay"
    end
  end
  words.join(" ")
end

def vowel? c
  $vowels.include? c
end
