require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "provided correct codeword" do
    result = check_codeword("horse")
    expect(result).to eq("Correct! Come in.")
  end

  it "provided correct first and last character" do
    result = check_codeword("house")
    expect(result).to eq("Close, but nope.")
  end

  it "provided incorrect input" do
    result = check_codeword("braindead")
    expect(result).to eq("WRONG!")
  end
end