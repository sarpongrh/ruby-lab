require 'time'

class MigrationWindow
  attr_reader :scheduled_for

  def initialize(database)
    @database = database
  end

  def scheduled_for=(accepted_date)
    @scheduled_for = Time.strptime(accepted_date, '%Y-%m-%d')
  rescue ArgumentError
    puts 'Please submit the date in the format yyyy-mm-dd.'
  end
end

migration_window = MigrationWindow.new('billing')
migration_window.scheduled_for = '2026-08-19'
# migration_window.scheduled_for = '19/08/2026'
p migration_window.scheduled_for
