def fib(n)
  return n if n <= 1
  fib(n - 1) + fib(n - 2)
end

start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
result = fib(40)
elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start

puts "Result: #{result}"
puts "Time: #{'%.3f' % elapsed}s"
