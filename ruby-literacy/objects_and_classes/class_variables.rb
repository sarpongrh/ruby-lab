class MigrationExperiment
  @@categories = []
  @@migrations = {}
  attr_reader :category, :title

  def self.register_migration_category(category)
    return if @@categories.include?(category)

    @@categories << category
    @@migrations[category] = 0
  end
  @@total_migrations = 0
  def self.total_migrations
    @@total_migrations
  end

  def initialize(title, category)
    raise "No such migration category: #{category}." unless @@categories.include?(category)

    puts "Creating a new migration in  #{category} category!"
    @category = category
    @title = title
    @@migrations[category] += 1
    @@total_migrations += 1
  end

  def same_category_count
    @@migrations[category]
  end
end

class ConcurrentWorkloadExperiment < MigrationExperiment
end

MigrationExperiment.register_migration_category('indexing')
MigrationExperiment.register_migration_category('locking')
MigrationExperiment.register_migration_category('constraints')

migration_one = MigrationExperiment.new('add customer lookup index', 'indexing')
MigrationExperiment.new('validate foreign key addition', 'locking')

puts migration_one.title
puts migration_one.category
puts migration_one.same_category_count

ConcurrentWorkloadExperiment.new('measure concurrent index behaviour', 'constraints')
puts MigrationExperiment.total_migrations
puts ConcurrentWorkloadExperiment.total_migrations
