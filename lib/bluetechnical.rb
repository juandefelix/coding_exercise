def find_duplicate num_array
  sorted_array = num_array.sort
  duplicate = nil

  sorted_array[0..-2].each_with_index do |number, index|
    remaining = sorted_array[(index+1)..-1]
    duplicate = number if remaining.include?(number)
  end

  duplicate
end


def first_non_repeating string
  sorted_array = string.downcase.chars

  return nil if sorted_array == [] 

  sorted_array.each_with_index do |letter, index|
    array_copy = sorted_array.dup
    array_copy.delete_at index

    return letter unless array_copy.include?(letter)
  end

  nil 
end