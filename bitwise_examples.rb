require 'benchmark'

def bitwise_power_of_two?(number)
  number & (number - 1) == 0
end

def iterate_power_of_two?(number)
  counter = 2
  while number > counter do
    counter*=2
  end
  return counter == number
end

puts Benchmark.measure {1.times {bitwise_power_of_two?(256)} }
puts Benchmark.measure {1.times {iterate_power_of_two?(256)} }
