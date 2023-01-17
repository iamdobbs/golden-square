require 'gratitudes'

RSpec.describe Gratitudes do

  before(:each) do
    @test = Gratitudes.new
  end

  it 'adds string to gratitude array' do
    result = @test.add('lucozade')
    expect(result).to eq ['lucozade']
  end

  it 'concatenates fixed string with array input' do
    @test.add('lucozade')
    result = @test.format
    expect(result).to eq "Be grateful for: lucozade"
  end  
end



