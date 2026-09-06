lag_samples = [45]
current_sample = 0

until lag_samples[current_sample].nil? || lag_samples[current_sample] <= 10
  puts "Replication has not caught up, replica lag is #{lag_samples[current_sample]} ms"
  current_sample += 1
end
if lag_samples[current_sample].nil?
  puts 'Replica lag data exhausted'
else
  lag_samples[current_sample]
  puts "Replication has caught up at #{lag_samples[current_sample]} ms"
end
