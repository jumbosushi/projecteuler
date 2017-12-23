# Find the sum of all the multiples of 3 or 5 below 1000.

class ModulosSum
  def initialize(base)
    @base = base
  end

  def getSum
    puts "Sum of #{@base}"
    mods = getModulos()
    return mods.sum
  end

  def getModulos
    mods = []
    (1..@base-1).each do |i|
      if isMod(i, 3) || isMod(i, 5)
        mods.push(i)
      end
    end
    puts "Applicable mods are #{mods}"
    return mods
  end

  def isMod(target, num)
    return target % num == 0
  end
end

obj = ModulosSum.new(10)
puts obj.getSum()

obj = ModulosSum.new(100)
puts obj.getSum()

obj = ModulosSum.new(1000)
puts obj.getSum()
