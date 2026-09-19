slow_count = 0
status = :report_not_started
message = 'Original report message'

checks = [
  ['primary', 42, :healthy],
  ['replica_1', 280, :degraded],
  ['replica_2', 95, :healthy]
]

checks.each do |database_name, latency, status; message|
  slow_count += 1 if latency > 200
  message = "#{database_name} responded in #{latency} ms with status #{status}"
  puts message
end

p slow_count
p status
p message
