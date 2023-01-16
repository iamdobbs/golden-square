require 'greet'

RSpec.describe "greet method" do
  it "greets Chris" do
    result = greet("Chris")
    expect(result).to eq("Hello, Chris!")
  end
end