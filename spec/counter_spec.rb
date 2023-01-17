require "counter"

RSpec.describe Counter do 
  it "adds 5 to an initial count 0" do
    first = Counter.new # First test variable
    result = first.add(5)
    expect(result).to eq 5
  end

  it "prints 'Counted to 5 so far.'" do
    second = Counter.new # Second test variable
    second.add(5)
    result = second.report
    expect(result).to eq "Counted to 5 so far."
  end  
end    