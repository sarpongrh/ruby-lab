class MigrationRun
  def set_run_id(string)
    puts 'Setting migration run ID...'
    @run_id = string
  end

  def get_run_id
    puts 'Returning the migration run ID...'
    @run_id
  end
end

migration_run = MigrationRun.new
migration_run.set_run_id('run-20260904-001')
puts migration_run.get_run_id
