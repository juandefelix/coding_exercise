require 'bluetechnical'

# ---------------------- #
# | find_duplicate tests #
# ---------------------- #

describe "method find_duplicate" do

  num_ary = (1..1_000_000).to_a.sample(15)
  random_num = num_ary.sample

  num_ary = (num_ary << random_num).shuffle

  it "returns nil if there's no repeated numbers" do
    expect(find_duplicate([1, 2, 3, 4])).to be_nil
  end

  it "takes and array as an argument and returns a number" do
    expect(find_duplicate(num_ary).class).to eq 6.class
  end

  it "returns a number that is not greather than the max value the array" do
    expect(find_duplicate(num_ary)).to be <= 1_000_000
  end

  it "returns a number that is not less than the max value the array" do
    expect(find_duplicate(num_ary)).to be >= 1
  end

  context "works fine with border values" do
    it 'like 1' do
      num_ary = [1, 1, 3, 6, 34, 67, 23453].shuffle

      expect(find_duplicate(num_ary)).to eq 1
    end

    it "like 1_000_000)" do
      num_ary = [1_000_000, 1_000_000, 2, 3, 4, 234, 2634].shuffle

      expect(find_duplicate(num_ary)).to eq 1_000_000
    end
  end

  it "returns the missing number" do
    expect(find_duplicate(num_ary)).to eq random_num
  end
end


# --------------------------- #
# | first_non_repeating tests #
# --------------------------- #


describe "method first_non_repeating" do

  it "return nil for empty string" do
    expect(first_non_repeating('')).to be_nil
  end

  it "takes a string as an argument and returns a letter when a letter is not repeated" do
    char_array = ('a'..'z').to_a.sample(5)
    duplicate_chars = char_array.sample(3)
    dup_string = (char_array + duplicate_chars).shuffle.join

    expect(first_non_repeating(dup_string).class).to eq 'a'.class
  end

  it "returns first letter for strings without repeated letters" do 
    expect(first_non_repeating('aurelio')).to eq 'a'
  end

  it "works for strings with only one letter non repeated" do 
    expect(first_non_repeating('oesccero')).to eq "s"
  end

  it "returns the first letter non repeated" do
    expect(first_non_repeating('oladeado')).to eq "l"
  end

  it "doesn't return the second letter non repeated" do
    expect(first_non_repeating('oladeado')).not_to eq "e"
  end

  it "works with capital letter mixed" do
    expect(first_non_repeating('oLAdeado')).to eq "l"
  end

  it "works with repeated letter in the second the last place" do
    expect(first_non_repeating('Clsclas')).to eq "a"
  end
end