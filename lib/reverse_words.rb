require 'pry'

def reverse_words(string)
  index = 0
  first_index = 0

  until string[index] == " " || index == (string.length - 1)
    if string[index] == " "
      last_index = index - 1
    end

    ((last_index - first_index) / 2).times do
      first = string[first_index]
      string[first_index] = string[last_index]
      string[last_index] = first

      first_index += 1
      last_index -= 1
    end


    until string[index] != " "
      index += 1
    end

    first_index = index

    index += 1
  end
  return string
end
