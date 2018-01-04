# What is the largest prime factor of the number 600851475143 ?

# Singe line, but kinda cheating
#
# require 'prime'
# puts Prime.prime_division(600851475143).last[0]

def largest_prime(number)
  i = 2
  largest_divisor = 0
    while i < number
      if number % i == 0
        largest_divisor = i
        number = number / i
        i = 2
      else
        i += 1
      end
    end
  puts number
end

largest_prime(600851475143)

