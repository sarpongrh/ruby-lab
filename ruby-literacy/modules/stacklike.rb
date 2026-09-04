module RollbackStackBehavior
  def rollback_steps
    @rollback_steps ||= []
  end

  def add_rollback_step(step)
    rollback_steps.push(step)
  end

  def take_rollback_step
    rollback_steps.pop
  end
end
