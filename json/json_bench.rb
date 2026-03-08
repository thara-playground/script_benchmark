require 'json'

data = (1..10_000).map { |i| { id: i, name: "user_#{i}", active: i.even? } }

start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

100.times do
  json_str = JSON.generate(data)
  JSON.parse(json_str)
end

elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start

puts "Time: #{'%.3f' % elapsed}s"
