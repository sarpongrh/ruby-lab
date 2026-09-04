# attr_accessor :lock_timeout_seconds provides the same reader and writer
# behavior as:
# attr_reader :lock_timeout_seconds
# attr_writer :lock_timeout_seconds

class MigrationWindow
  attr_reader :database, :scheduled_for
  attr_accessor :lock_timeout_seconds

  def initialize(database, scheduled_for)
    @database = database
    @scheduled_for = scheduled_for
  end
end
