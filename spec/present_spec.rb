require 'present'

RSpec.describe Present do

  before(:each) do
    @test = Present.new
  end

  it "Fails when present is already wrapped" do
    @test.wrap("guitar")
    expect{ @test.wrap("") }.to raise_error "A contents has already been wrapped."
  end

  it "Fails if contents haven't been wrapped" do
    expect{ @test.unwrap}.to raise_error "No contents have been wrapped."
  end
end