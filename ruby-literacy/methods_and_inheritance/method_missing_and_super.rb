class MigrationRun
  def self.runs
    @runs ||= []
  end

  attr_reader :name, :tags, :reviewers

  def initialize(name)
    @name = name
    @tags = []
    @reviewers = []
    MigrationRun.runs << self
  end

  def add_tag(tag)
    @tags << tag
  end

  def add_reviewer(reviewer)
    @reviewers << reviewer
  end

  def self.method_missing(method_name, *args)
    if method_name.start_with?('all_with_')
      attribute = method_name[9..]
      raise ArgumentError, "Cannot find #{attribute}" unless public_method_defined?(attribute)

      runs.find_all do |run|
        run.public_send(attribute).include?(args[0])
      end
    else
      super
    end
  end

  def self.respond_to_missing?(method_name, include_private = false)
    if method_name.start_with?('all_with_')
      attribute = method_name[9..]
      public_method_defined?(attribute) || super
    else
      super
    end
  end
end

billing_run = MigrationRun.new('billing-add-index')
analytics_run = MigrationRun.new('analytics-add-constraint')
billing_run.add_reviewer('Release engineer')
billing_run.add_tag('indexing')
analytics_run.add_tag('locking')

matching_runs = MigrationRun.all_with_tags('indexing')
puts "#{matching_runs.first.name} has tags: #{matching_runs.first.tags.join(', ')}."
