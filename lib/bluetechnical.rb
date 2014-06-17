def find_duplicate num_array
  sum = (1..1000000).to_a.reduce(:+)
  my_sum = num_array.reduce(:+)

  sum - my_sum
end

