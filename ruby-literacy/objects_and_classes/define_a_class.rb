class MigrationPlan
  def operation
    'Not specified yet...'
  end
end

migration_plan = MigrationPlan.new
puts migration_plan.operation

# Reopening classes

class RehearsalDraft
  # This class will be reopened with new methods
end

# Adding a new method
class RehearsalDraft
  def validate; end
end
