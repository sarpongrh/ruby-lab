class DatabaseMigrationChecker
  attr_reader :migration_status

  def initialize(migration_status)
    @migration_status = migration_status
  end

  def database_migration_status
    case migration_status
    when :pending
      'Migration is waiting to start'
    when :running
      'Migration is currently running'
    when :completed
      'Migration completed successfully'
    when :failed
      'Migration failed'
    else
      'Unknown migration status'
    end
  end
end

check_db_migration_pending = DatabaseMigrationChecker.new(:pending)
puts check_db_migration_pending.database_migration_status

check_db_migration_running = DatabaseMigrationChecker.new(:running)
puts check_db_migration_running.database_migration_status

check_db_migration_completed = DatabaseMigrationChecker.new(:completed)
puts check_db_migration_completed.database_migration_status

check_db_migration_failed = DatabaseMigrationChecker.new(:failed)
puts check_db_migration_failed.database_migration_status

check_db_migration_cancelled = DatabaseMigrationChecker.new(:cancelled)
puts check_db_migration_cancelled.database_migration_status
