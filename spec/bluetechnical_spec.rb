require 'bluetechnical'

# describe "method find_duplicate" do

#   num_ary = (1..1_000_000).to_a
#   random_num = num_ary.delete(1 + rand(1_000_000))

#   it "takes and array as an argument and returns a number" do
#     expect(find_duplicate(num_ary).class).to eq 6.class
#   end

#   it "returns a number that is not greather than the max value the array" do
#     expect(find_duplicate(num_ary)).to be <= 1_000_000
#   end

#   it "returns a number that is not less than the max value the array" do
#     expect(find_duplicate(num_ary)).to be >= 1
#   end

#   context "works fine with border values" do
#     it 'like 1' do
#       num_ary = (1..1_000_000).to_a
#       random_num = num_ary.delete(1)

#       expect(find_duplicate(num_ary)).to eq 1
#     end

#     it "like 1_000_000)" do
#       num_ary = (1..1_000_000).to_a
#       random_num = num_ary.delete(1_000_000)

#       expect(find_duplicate(num_ary)).to eq 1_000_000
#     end
#   end

#   it "returns the missing number" do
#     expect(find_duplicate(num_ary)).to eq random_num
#   end
# end



describe "method first_non_repeating" do

  it "return nil for empty string" do
    expect(first_non_repeating('')).to be_nil
  end

  it "takes and array as an argument and returns a number when a letter is repeated" do
    char_array = ('a'..'z').to_a.sample(5)
    duplicate_chars = char_array.sample(3)
    dup_array = (char_array + duplicate_chars).shuffle.join

    expect(first_non_repeating(dup_array).class).to eq 'a'.class
  end

  it "returns nil for strings without repeated letters" do 
    expect(first_non_repeating('aurelio')).to be_nil
  end

  it "works for strings with only one letter repeated" do 
    expect(first_non_repeating('Soccer')).to eq "c"
  end

  it "works for strings with only one non consecutive letter repeated" do 
    expect(first_non_repeating('cactus')).to eq "c"
  end

  it "works with more than one letter repeated" do
    expect(first_non_repeating('oladead')).to eq "a"
  end

  it "works with capital letter mixed" do
    expect(first_non_repeating('olAdead')).to eq "a"
  end

  it "works with repeated letter in the second the last place" do
    expect(first_non_repeating('Class')).to eq "s"
  end
end