class EvenFibonnaci
  attr_accessor :total, :previous, :array

  def initialize
    @total = 2
    @previous = 1
    @array = [2]
  end

  def add x, y
    @previous = y
    @total = x + y
  end

  def repeat
    loop do
      add @previous, @total

      break if isBiggerThan4Million? @total

      if isEven? @total
        @array.push(@total)
      end

    end

    return @total
  end

  def isEven? n
    n.even?
  end

  def isBiggerThan4Million? n
    if n >= 4000000
      return true
    end

    return false
  end

  def result
    finale = @array.reduce(:+)
    puts finale
  end
end

fibs = EvenFibonnaci.new
fibs.repeat
fibs.result
