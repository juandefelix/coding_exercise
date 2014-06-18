# this one takes always the same amount of time. 
# The next one takes time depending if the number 
# is at the beginning or end of the array

# def find_duplicate num_array
#   sum = (1..1000000).to_a.reduce(:+)
#   my_sum = num_array.reduce(:+)

#   sum - my_sum
# end


def find_duplicate num_array
  sorted_array = num_array.sort

  return 1_000_000 if num_array[-1] == 999_999 # special case where the missing 
                                               # number is the last in the range

  sorted_array.each_with_index.detect {|e, i| e != i + 1}[0] - 1
end

# num_ary = (1..1_000_000).to_a
# random_num = num_ary.delete(1 + rand(1_000_000))


# initial = Time.now

# find_duplicate(num_ary)

# final = Time.now

# puts "Method summing takes: #{final - initial} secs."



# initial = Time.now

# find_duplicate_order(num_ary)

# final = Time.now

# puts "Method ordering takes: #{final - initial} secs."



def first_non_repeating string
  sorted_array = string.downcase.chars

  sorted_array[0..-2].each_with_index do |letter, index|
    remaining = sorted_array[(index+1)..-1]
    return letter if remaining.include? letter
  end

  nil
end














