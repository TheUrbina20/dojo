require_relative '../sum_parts'

RSpec.describe 'sum_parts', type: :module do
  it 'success if empty array given' do
    ls = []

    expected_response = [0]
    expect(sum_parts(ls)).to eq([0])
  end

  it 'success if one element given' do
    ls = [1]

    expected_response = [1, 0]
    expect(sum_parts(ls)).to eq(expected_response)
  end

  it 'works like a charm' do
    ls = [1, 2, 3, 4, 5, 6]

    expected_response = [21, 20, 18, 15, 11, 6, 0]
    expect(sum_parts(ls)).to eq(expected_response)
  end

  it 'works with more complex numbers' do
    ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]

    expected_response = [21, 20, 18, 15, 11, 6, 0]
    expect(sum_parts(ls)).to eq([10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0])
  end
end
