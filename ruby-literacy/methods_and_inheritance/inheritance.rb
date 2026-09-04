# Inheritance lets a subclass reuse and extend behavior from its superclass.
class MigrationArtifact
  attr_accessor :owner
end

class MigrationReport < MigrationArtifact
  attr_accessor :reviewer
end

migration_report = MigrationReport.new
migration_report.owner = 'Database team'
migration_report.reviewer = 'Release engineer'
puts(
  "The report is owned by #{migration_report.owner} and reviewed by " \
  "#{migration_report.reviewer}."
)
