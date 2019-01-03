class Book
  attr_accessor :title

  # def title=(book)
  #   @title = titleize(book)
  # end

  def title=(words)
    array = words.split
    array[0].capitalize!
    array.each do |word|
      if word != 'the' && word != 'and' && word != 'or' && word != 'over' && word != 'in' && word != 'of' && word != 'a' && word != 'an'
        word.capitalize!
      end
    end
    @title = array.join(' ')
  end

end
