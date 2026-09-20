def database_backup_events
  yield('account_db', 10, :success)
end

database_backup_events do |db, retry_count = 1, *others, duration_sec, result|
  puts "Database: #{db}"
  puts "Retry Count: #{retry_count}"
  puts "Metadata: #{others}"
  puts "Duration: #{duration_sec} sec"
  puts "Result: #{result}"
end
