class MigrationRunner
  attr_reader :concurrency, :connections, :workers

  def initialize(concurrency = 1)
    @connections = 1
    @workers = 1
    @concurrency = concurrency
  end

  def execute
    puts 'This runner cannot execute concurrent migration work.'
  end
end

class ConcurrentMigrationRunner < MigrationRunner
  def initialize(concurrency)
    super
    @workers = 2
  end

  def execute
    puts 'This runner can execute concurrent migration work.'
  end
end

runner = ConcurrentMigrationRunner.new(1)
runner.method(:execute).call
runner.method(:execute).super_method.call
