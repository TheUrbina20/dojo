def parts_sums(ls)
  # feel free to use one-line instead if you want
  ls.reverse.reduce([0]) do |memo, number|
    last_processs_result = memo.first
    memo.prepend(number + last_processs_result)
  end
end
