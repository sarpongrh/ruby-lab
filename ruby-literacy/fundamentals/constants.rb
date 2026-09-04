class MigrationPlan
  SUPPORTED_OPERATIONS = %w[add_index add_constraint add_column]

  def initialize(operation, target)
    unless SUPPORTED_OPERATIONS.include?(operation)
      raise ArgumentError, "Unsupported migration operation: #{operation}"
    end

    @operation = operation
    @target = target
  end
end
