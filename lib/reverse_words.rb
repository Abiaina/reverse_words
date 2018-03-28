require 'pry'

def string_reverse(string, index_f, index_l)

  while index_f - index_l <= 0
    first = string[index_f]
    last = string[index_l]
    string[index_f] = last
    string[index_l] = first

    index_f += 1
    index_l -= 1
  end
end

def reverse_words(my_words)
  index = 0
  rev_first = 0

  if my_words.length < 1
    return my_words
  end

  my_words.length.times do
    if my_words[index] == " " || index = ((my_words.length))

      if my_words[index] = " "
        rev_last = index - 1
      else
        rev_last = index
      end

      string_reverse(my_words, rev_first, rev_last)
binding.pry
      rev_first = index + 1
    end
    index += 1
  end

  return my_words
end

puts reverse_words("hello me")
