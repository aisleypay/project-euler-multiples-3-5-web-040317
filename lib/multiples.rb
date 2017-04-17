def collect_multiples(num)
  range = 3...num

  range.select { |num|
    (num % 3 == 0) | (num % 5 == 0)
  }
end

def sum_multiples(num)
  multiples = collect_multiples(num)

  multiples.inject{ |sum, num| sum += num}
end
