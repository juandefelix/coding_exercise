require 'bluetechnical'

describe "method find_duplicate" do

  num_ary = (1..1_000_000).to_a
  random_num = num_ary.delete(1 + rand(1_000_000))

  it "takes and array as an argument and returns a number" do
    expect(find_duplicate(num_ary).class).to eq 6.class
  end

  it "returns a number that is not greather than the max value the array" do
    expect(find_duplicate(num_ary)).to be <= 1_000_000
  end

  it "returns a number that is not less than the max value the array" do
    expect(find_duplicate(num_ary)).to be >= 1
  end

  it "works fine with border values (1)" do
    num_ary = (1..1_000_000).to_a
    random_num = num_ary.delete(1)

    expect(find_duplicate(num_ary)).to eq 1
  end

  it "works fine with border values (1_000_000)" do
    num_ary = (1..1_000_000).to_a
    random_num = num_ary.delete(1_000_000)

    expect(find_duplicate(num_ary)).to eq 1_000_000
  end

  it "returns the missing number" do
    expect(find_duplicate(num_ary)).to eq random_num
  end

end