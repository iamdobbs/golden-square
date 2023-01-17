require 'string_builder'

RSpec.describe StringBuilder do
  it "adds 'chars' to an empty string" do
    first = StringBuilder.new
    result = first.add('hello')
    expect(result).to eq 'hello'
  end
  
  it "returns length of string" do
    second = StringBuilder.new
    second.add('hello')
    result = second.size
    expect(result).to eq 5
  end

  it "outputs the string" do
    third = StringBuilder.new
    third.add('hello')
    result = third.output
    expect(result).to eq 'hello'
  end
end