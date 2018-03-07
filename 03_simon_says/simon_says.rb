#write your code here

def echo string
  string
end

def shout string
  string.upcase
end

def repeat(s, times_to_repeat = 2)
  ([s] * times_to_repeat).join(" ")
end

def start_of_word s, n
  s.slice(0, n)
end

def first_word s
  (s.split)[0]
end

def titleize s
  words = s.split.map do |word|
    if %w(and over the).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
