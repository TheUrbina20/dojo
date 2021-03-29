def sum_parts(ls)
  return [0] if ls.empty?

  response = []
  ls.size.times do
    response << ls.reduce(0) { |memo, x| memo + x }
    ls.shift
  end
  response << 0
end
