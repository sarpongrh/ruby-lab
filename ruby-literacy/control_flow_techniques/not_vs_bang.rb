class DatabaseConnection
  attr_reader :db_connection_status

  def initialize(db_connection_status)
    @db_connection_status = db_connection_status
  end

  def bang_database_status_check?
    !(db_connection_status == :connected)
  end

  def not_database_status_check?
    not db_connection_status == :connected
  end
end

connection1 = DatabaseConnection.new(:connected)
p connection1.bang_database_status_check?
p connection1.not_database_status_check?

connection2 = DatabaseConnection.new(:disconnected)
p connection2.bang_database_status_check?
p connection2.not_database_status_check?
