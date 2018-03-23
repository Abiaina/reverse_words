require 'pry'

def reverse_words(my_words)

  index = 0
  rev_first = 0

  if my_words.length < 1
    return my_words
  end

  my_words.length.times do
    if my_words[index] == " " || index = ((my_words.length) -1)

      rev_last = index

      while rev_first - rev_last <= 0
        first = my_words[rev_first]
        my_words[rev_first] = my_words[rev_last]
        my_words[rev_last] = first

        rev_first += 1
        rev_last -= 1
      end
    end
    index += 1
    rev_first = index
  end
  return my_words
end




puts reverse_words("hello me")

#olehh
