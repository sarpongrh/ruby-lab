module RehearsalLogging
  def report_start
    puts 'Starting migration rehearsal.'
  end
end

# Modules add their instance methods to classes through include.
class MigrationExecutor
  include RehearsalLogging
end

migration_executor = MigrationExecutor.new
migration_executor.report_start
