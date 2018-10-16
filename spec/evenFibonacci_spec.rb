require_relative "../lib/evenFibonacci.rb"

describe "FizzBuzz" do

  before(:each) do
    @evenFib = EvenFibonnaci.new
  end

  it "should add two numbers and remember their total" do
    expect(@evenFib.add(2,3)).to eq 5
    expect(@evenFib.total).to eq 5
  end

  it "should add the previous total to the next in the sequence" do
    expect(@evenFib.add(1,2)).to eq 3
    expect(@evenFib.add(@evenFib.total,@evenFib.previous)).to eq 5
  end

  it "should repeat" do
    expect(@evenFib).to respond_to :repeat
  end

  it "should know even values" do
    expect(@evenFib).to respond_to :isEven?
    expect(@evenFib.isEven? 12).to be true
    expect(@evenFib.isEven? 11).to be false
  end

  it "should repeat until @total is greater than or equal to 4,000,000" do
    expect(@evenFib).to respond_to :isBiggerThan4Million?
  end
end
