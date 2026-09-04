class MigrationWindow
  def initialize(database, scheduled_for, lock_timeout_seconds)
    @database = database
    @scheduled_for = scheduled_for
    @lock_timeout_seconds = lock_timeout_seconds
  end

  def database
    @database
  end

  def scheduled_for
    @scheduled_for
  end

  def lock_timeout_seconds
    @lock_timeout_seconds
  end

  def reduced_lock_timeout(reduction_percentage)
    lock_timeout_seconds - ((lock_timeout_seconds * reduction_percentage) / 100.0)
  end
end

migration_window = MigrationWindow.new('billing', '2026-08-18', 120)

puts(
  "The migration for #{migration_window.database} on #{migration_window.scheduled_for} " \
  'reduces its lock timeout by 15% to ' \
  "#{'%.2f' % migration_window.reduced_lock_timeout(15)} seconds."
)
