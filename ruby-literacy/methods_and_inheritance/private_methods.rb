class PostgresConnection
  attr_reader :host, :database, :port, :status

  def initialize(host, database, port)
    @host = host
    @database = database
    @port = port
    @status = :disconnected
  end

  def connect
    validate_configuration
    build_connection_string
    open_connection
  end

  private

  def validate_configuration
    raise ArgumentError, 'Missing host from connection details' if host.nil? || host.empty?
    if database.nil? || database.empty?
      raise ArgumentError, 'Missing database from connection details'
    end
    raise ArgumentError, 'Invalid connection port' unless port.is_a?(Integer) && port.positive?
  end

  def build_connection_string
    @connection_string = "postgresql://#{host}:#{port}/#{database}"
  end

  attr_writer :status

  def open_connection
    self.status = :connected
  end
end

connection = PostgresConnection.new('localhost', 'app_db', 5432)
# connection.validate_configuration
connection.connect

puts "#{connection.host}\n #{connection.database}\n #{connection.port}"
p connection.status
