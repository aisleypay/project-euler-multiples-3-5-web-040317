# Enter your object-oriented solution here!

class Multiples
  attr_accessor :limit
  
  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    range = 3...self.limit
    range.select { |num| (num % 3 == 0) | (num % 5 == 0) }
  end

  def sum_multiples
    multiples = collect_multiples
    multiples.inject{ |sum, num| sum += num}
  end

end
