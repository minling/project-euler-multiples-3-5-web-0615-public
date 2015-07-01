# Enter your object-oriented solution here!
class Multiples
  attr_accessor :int
  def initialize(int)
    @int = int
  end

  def collect_multiples
    numbers = (1...@int).to_a

    numbers.collect do |number|
      if (number % 3 == 0) || (number % 5 ==0)
        number
      end
    end.compact
  end

  def sum_multiples
    collect_multiples.inject do |sum, number|
      sum + number
    end
  end

end
