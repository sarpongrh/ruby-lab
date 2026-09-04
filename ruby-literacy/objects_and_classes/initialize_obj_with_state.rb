class MigrationWindow
  def initialize(database, scheduled_for)
    @database = database
    @scheduled_for = scheduled_for
  end

  def database
    @database
  end

  def scheduled_for
    @scheduled_for
  end
end

billing_window = MigrationWindow.new('billing', '2025-11-12')
analytics_window = MigrationWindow.new('analytics', '2025-12-13')
puts 'We have created two migration windows.'
puts "The first is for #{billing_window.database} on #{billing_window.scheduled_for}."
puts "The second is for #{analytics_window.database} on #{analytics_window.scheduled_for}."
