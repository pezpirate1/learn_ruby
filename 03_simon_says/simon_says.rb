def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, n = 2)
  ([input] * n).join(" ")
end

def start_of_word(input, n)
  input[0, n]
end

def first_word(input)
  array = input.split(' ')
  array[0]
end

def titleize(input)
  words = input.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end