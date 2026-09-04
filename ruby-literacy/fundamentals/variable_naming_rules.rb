# Valid Ruby variable names by type.

# Local variable:
database_name = 'billing'
puts database_name

# @run_id is an instance variable that belongs to each MigrationRun object.
class MigrationRun
  def initialize(run_id)
    @run_id = run_id
  end

  def display_run_id
    puts @run_id
  end
end

migration_run = MigrationRun.new('run-20260904-001')
migration_run.display_run_id

# @@run_count is shared state associated with the class hierarchy
# rather than with one individual RehearsalBatch object.
class RehearsalBatch
  @@run_count = 0

  def initialize
    @@run_count += 1
  end

  def self.run_count
    @@run_count
  end
end

RehearsalBatch.new
RehearsalBatch.new

puts RehearsalBatch.run_count

$default_database = 'billing'

def display_default_database
  puts $default_database
end

display_default_database
