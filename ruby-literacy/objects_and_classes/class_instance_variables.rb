class MigrationExperiment
  @categories = []
  @migrations = {}
  @total_migrations = 0
  attr_reader :title, :category

  def self.register_migration_category(category)
    return if @categories.include?(category)

    @categories << category
    @migrations[category] = 0
  end

  class << self
    attr_reader :total_migrations
  end

  def self.category_count(category)
    @migrations[category]
  end

  def same_category_count
    MigrationExperiment.category_count(category)
  end

  def self.increase_category_count(category)
    @migrations[category] += 1
  end

  def self.increase_total_migrations_count
    @total_migrations += 1
  end

  def self.category_registered?(category)
    @categories.include?(category)
  end

  def initialize(title, category)
    unless MigrationExperiment.category_registered?(category)
      raise "There is no such category: #{category}"
    end

    puts "Creating a new migration in #{category} category!"
    @category = category
    @title = title
    MigrationExperiment.increase_category_count(category)
    MigrationExperiment.increase_total_migrations_count
  end
end

class ConcurrentWorkloadExperiment < MigrationExperiment
end

MigrationExperiment.register_migration_category('Indexing')
MigrationExperiment.register_migration_category('Locking')
MigrationExperiment.register_migration_category('Constraints')

migration_one = MigrationExperiment.new('add customer lookup index', 'Indexing')
MigrationExperiment.new('measure concurrent index behaviour', 'Locking')
MigrationExperiment.new('validate foreign key addition', 'Constraints')
ConcurrentWorkloadExperiment.new("drop old accounts schema's", 'Constraints')

puts migration_one.same_category_count
p MigrationExperiment.total_migrations
p ConcurrentWorkloadExperiment.total_migrations
