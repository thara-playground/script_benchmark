require 'tempfile'

data = "x" * 1_000_000

tmpfile = Tempfile.new('bench')
path = tmpfile.path
tmpfile.close

start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

100.times do
  File.write(path, data)
  File.read(path)
end

elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start

File.delete(path) if File.exist?(path)

puts "Time: #{'%.3f' % elapsed}s"
