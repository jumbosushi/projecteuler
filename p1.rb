# Find the sum of all the multiples of 3 or 5 below 1000.

class ModulosSum
  def initialize(base)
    @base = base
  end

  def get_sum
    puts "Sum of #{@base}"
    mods = get_modulos()
    return mods.sum
  end

  def get_modulos
    mods = []
    (1..@base-1).each do |i|
      if is_mod(i, 3) || is_mod(i, 5)
        mods.push(i)
      end
    end
    puts "Applicable mods are #{mods}"
    return mods
  end

  def is_mod(target, num)
    return target % num == 0
  end
end

obj = ModulosSum.new(10)
puts obj.get_sum()

obj = ModulosSum.new(100)
puts obj.get_sum()

obj = ModulosSum.new(1000)
puts obj.get_sum()
