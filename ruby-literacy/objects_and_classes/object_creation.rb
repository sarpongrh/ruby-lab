# The data needed for a migration rehearsal resides in the object.
migration = Object.new

def migration.scheduled_for
  '2026-09-04'
end

def migration.target
  'billing.invoices'
end

def migration.operation
  'add_index'
end

def migration.owner
  'Database team'
end

def migration.strategy
  'concurrently'
end

def migration.lock_timeout_seconds
  30
end

puts(
  "This migration will #{migration.operation} on #{migration.target} " \
  "at #{migration.scheduled_for}."
)
puts "The owner is the #{migration.owner}."
puts(
  "The strategy is #{migration.strategy}, with a " \
  "#{migration.lock_timeout_seconds}-second lock timeout."
)

def migration.execution_status
  'ready'
end

def migration.ready?
  true
end

def migration.print_details(*details)
  details.each { |detail| puts "This migration is #{detail}" }
  puts 'This migration requires a rollback plan.'
  puts 'This migration requires monitoring.'
  puts 'This migration requires review before execution.'
end

migration.print_details(migration.execution_status)
