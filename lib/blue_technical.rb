# Given an array of integers between 1 and 1,000,000.
# One integer is in the array twice. 
# Find the duplicate.

def find_duplicate num_array
  sorted_array = num_array.sort

  sorted_array[0..-2].each_with_index do |number, index|
    return number if sorted_array[(index+1)] == number
  end

  nil
end

# Find the first non-repeating character in a string:("DEFD" -> E )

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

# A standard deck of 52 cards is represented in an array.
# Each card is represented as an integer. 
# Write a method to shuffle the cards.

# In ruby this method has several easy implementation like this:

# def card_shuffle cards_deck
#   cards_deck.shuffle
# end

# I'm going to implement this method using an algorithm

def card_shuffle(cards_deck)
  cards_deck.each_with_index do |current_card, current_index|
    random_index = rand(cards_deck.size)
    random_card = cards_deck[random_index]

    cards_deck[random_index] = current_card
    cards_deck[current_index] = random_card
  end
end





