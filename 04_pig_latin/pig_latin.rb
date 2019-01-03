#write your code here

# def translate(word)
#   array_words = word.split
#   array_words.each do |word|
#     if word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u'
#     word << 'ay'
#   else
#     array_letters = []
#     # for (let i = 0; i < array_words.length; i++) {
#       array_letters << array_words.split("")
#     # }
#   end
#   array_words.join
# end

# def translate(word)
#   array_words = word.split
#   array_words.each do |word|
#     x = word.match(/^(qu)*[^aeiou]*/)
#     if x = nil?
#       array_words << add_ay(word)
#     else
#       array_words << add_ay(word + x.to_s)
#     end
#   end
#   array_words.join
# end
#
# def add_ay(word)
#   word + 'ay'
# end

# def translate(sent)
#     vowels = %w{a e i o u}
#     sent.gsub(/(\A|\s)\w+/) do |str|
#             str.strip!
#         while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
#             str += str[0]
#             str = str[1..-1]
#         end
#         str  = ' ' + str + 'ay'
#     end.strip
# end

$vowels = "aeiou"

def consonant(string)
  x = 0
  while x < string.length
    if $vowels.include?(string[x]) && string[x-1..x] != "qu"
      return "#{string[x..-1]}#{string[0..x-1]}ay"
    else
      x += 1
    end
  end
end

def translate(word)
  word.split.map{ |word| $vowels.include?(word[0]) ? "#{word}ay" : consonant(word) }.join(" ")
end
