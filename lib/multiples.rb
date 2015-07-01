# Enter your procedural solution here!
require 'pry'

  def collect_multiples(int) 
    numbers = (1...int).to_a
    numbers.collect do |number|
      if (number % 3 == 0) || (number % 5 ==0)
        number
      end
    end.compact
  end

  def sum_multiples(int)
    collect_multiples(int).inject do |sum, number|
      sum + number
    end
  end
