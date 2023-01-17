require 'gratitudes'

RSpec.describe Gratitudes do
  it 'adds string to gratitude variable' do
    first = Gratitudes.new
    result = first.add('lucozade')
    expect(result).to eq ['lucozade']
  end

  it 'concatenates fixed string with array input' do
    second = Gratitudes.new
    second.add('lucozade')
    result = second.format
    expect(result).to eq "Be grateful for: lucozade"
  end  
end



