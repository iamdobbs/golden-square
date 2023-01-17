require 'string_builder'

RSpec.describe StringBuilder do

  before(:each) do
    @test = StringBuilder.new
    @str = @test.add('hello')
  end

  it "adds 'chars' to an empty string" do
    expect(@str).to eq 'hello'
  end

  it "returns length of string" do
    result = @str.size
    expect(result).to eq 5
  end

  it "outputs the string" do
    result = @test.output
    expect(result).to eq 'hello'
  end
end