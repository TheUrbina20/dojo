def median_of_arrays(array1, array2)
  total_array = (array1 + array2).sort
  array_size = total_array.size
  if array_size.odd?
    middle_element_index = (array_size/2)
    total_array[middle_element_index].to_f
  else
    index_a = (array_size/2) - 1
    index_b = array_size/2
    (total_array[index_a] + total_array[index_b]).to_f / 2
  end
end
