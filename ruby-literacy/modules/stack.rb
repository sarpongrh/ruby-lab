require_relative 'stacklike'

class RollbackPlan
  include RollbackStackBehavior
end

rollback_plan = RollbackPlan.new
rollback_plan.add_rollback_step('restore constraint')
rollback_plan.add_rollback_step('drop replacement index')
rollback_plan.add_rollback_step('restore application writes')
puts 'Rollback steps currently on the stack:'
puts rollback_plan.rollback_steps
taken_step = rollback_plan.take_rollback_step
puts 'Removed this rollback step:'
puts taken_step
puts 'Rollback steps now on the stack:'
puts rollback_plan.rollback_steps
