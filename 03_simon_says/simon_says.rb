#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  ((word.split())*num).join(" ")
end

def start_of_word(word, num)
  x = num - 1
  word[0..x]
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  array = words.split
  array[0].capitalize!
  array.each do |word|
    if word != 'the' && word != 'and' && word != 'or' && word != 'over'
      word.capitalize!
    end
  end

  array.join(' ')
end
