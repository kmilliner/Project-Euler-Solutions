#!/usr/bin/env ruby

def smallestDivisibleBy(range)
  num = 0
  while (true) do
    num += 1
    break if divisibleBy(num, range)
  end
  num
end

def divisibleBy(val, range)
  for i in range
    if val%i!=0 or val<i
      return false
    end
  end
  true
end

puts smallestDivisibleBy([20,19,18,17,16,15,14,13,12,11])