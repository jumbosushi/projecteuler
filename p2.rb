# By considering the terms in the Fibonacci sequence whose
# values do not exceed four million, find the sum of the
# even-valued terms.

include Math

class Fib
  def initialize
  end

  def even_sum(max)
    puts "Finding sum of even numbers in fib sequence up till #{max} ..."
    fib = bottom_up(max)
    puts "Sum is #{fib.select(&:even?).sum}"
  end


  private

  # Find fib sequence up untill num
  # Using Dynamic Programming
  def bottom_up(max)
    fib = []
    fib[0] = 1
    fib[1] = 2

    for i in 2..Float::INFINITY
      sum = fib[i-1] + fib[i-2]

      if sum > max
        break
      else
        fib[i] = sum
      end
    end

    return fib
  end
end

my_fib = Fib.new
my_fib.even_sum(4_000_000)
