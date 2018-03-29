require 'pry'

def reverse_words(string)
  if string.nil? || string.length < 1
    return string
  end

  index = 0
  first_index = 0

  while index < string.length

    until string[index] != " " || index == (string.length - 1)
      index += 1
    end

    first_index = index

    until string[index] == " " || index == (string.length - 1)
      index += 1
    end

    last_index = index - 1

    if string[index] != " "
      last_index = index
    end

    (((last_index - first_index) + 1) / 2).times do
      first = string[first_index]
      string[first_index] = string[last_index]
      string[last_index] = first

      first_index += 1
      last_index -= 1
    end

    index += 1
  end
end
