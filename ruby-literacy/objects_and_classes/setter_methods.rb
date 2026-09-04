class MigrationWindow
  def initialize(database, scheduled_for)
    @database = database
    @scheduled_for = scheduled_for
  end

  def lock_timeout_seconds=(seconds)
    @lock_timeout_seconds = seconds
  end

  def lock_timeout_seconds
    @lock_timeout_seconds
  end
end

migration_window = MigrationWindow.new('billing', '2025-11-12')
migration_window.lock_timeout_seconds = 60
puts "The lock timeout is #{'%.2f' % migration_window.lock_timeout_seconds} seconds."
migration_window.lock_timeout_seconds = 75
puts(
  'The lock timeout changed. It is now ' \
  "#{'%.2f' % migration_window.lock_timeout_seconds} seconds."
)

# A setter method like lock_timeout_seconds= is not about printing the value back.
# It decides what should happen when someone assigns a lock timeout.
# The assignment expression still evaluates to the assigned value, 111.22.
class AssignmentLogger
  def lock_timeout_seconds=(_seconds)
    puts "The current time is #{Time.now}"
  end
end

assignment_logger = AssignmentLogger.new
puts(assignment_logger.lock_timeout_seconds = 111.22)
