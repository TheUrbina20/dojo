require_relative '../median_of_two_sorted_arrays'

describe "#median_of_arrays" do
  it "success with non-pair arrays" do
    array1 = [1, 3]
    array2 = [2]

    result = median_of_arrays(array1, array2)
  
    expect(result).to eq(2.00000)
  end

  it "success with pair arrays" do
    array1 = [1, 2] 
    array2 = [3, 4]

    result = median_of_arrays(array1, array2)

    expect(result).to eq(2.50000)
  end

  it "success with arrays full of 0" do
    array1 = [0, 0]
    array2 = [0, 0]

    result = median_of_arrays(array1, array2)

    expect(result).to eq(0.00000)
  end

  it "success with one empty array given" do
    array1 = []
    array2 = [1]

    result = median_of_arrays(array1, array2)

    expect(result).to eq(1.00000)
  end

  it "success with random values" do
    array1 = [7, 10, 23, 31, 70, 98]
    array2 = [0, 12]

    result = median_of_arrays(array1, array2)

    expect(result).to eq(17.5)
  end
end
