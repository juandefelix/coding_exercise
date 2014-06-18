# Given an array of integers between 1 and 1,000,000.
# One integer is in the array twice. 
# Find the duplicate.


def find_duplicate num_array                              # If we sort the array, we will find two
  sorted_array = num_array.sort                           # consecutive numbers that are the same

  sorted_array[0..-2].each_with_index do |number, index|
    return number if sorted_array[(index+1)] == number
  end

  nil
end


# Find the first non-repeating character 
# in a string:("DEFD" -> E )


def first_non_repeating string                            # If a character is not repeated, you won't
  chars_array = string.downcase.chars                     # find it in the remaining characters.
                                                          # We return the first case.
  return nil if chars_array.empty?

  chars_array.each_with_index do |letter, index|
    array_copy = chars_array.dup
    array_copy.delete_at index

    return letter unless array_copy.include?(letter)
  end

  nil 
end


# A standard deck of 52 cards is represented in an array.
# Each card is represented as an integer. 
# Write a method to shuffle the cards.


def card_shuffle(cards_deck)                                      # We swap each element for another 
  cards_deck.each_with_index do |current_card, current_index|     # in the array
    random_index = rand(cards_deck.size)
    random_card = cards_deck[random_index]

    
    cards_deck[random_index] = current_card
    cards_deck[current_index] = random_card
  end
end

# Also, the shuffle method has a built-in implementation in Ruby:

# def card_shuffle cards_deck
#   cards_deck.shuffle
# end


