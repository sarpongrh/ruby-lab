class MigrationRequest
  attr_reader :request_id, :risk_tier, :status

  def initialize(request_id, risk_tier, status)
    @request_id = request_id
    @risk_tier = risk_tier
    @status = status
  end

  def ready?
    unless @status == :ready
      false
    else
      true
    end
  end

  def ready_with_negation?
    if !(@status == :ready)
      false
    else
      true
    end
  end
end

class ChangeOperator
  attr_reader :approved_request_ids

  def initialize
    @approved_request_ids = []
  end

  def grant_approval(request_id)
    @approved_request_ids << request_id
  end

  def can_run?(migration_request)
    if migration_request.status != :ready
      false
    elsif migration_request.risk_tier == :low
      true
    elsif @approved_request_ids.include?(migration_request.request_id)
      true
    else
      false
    end
  end
end

operator = ChangeOperator.new
p operator.approved_request_ids
operator.grant_approval('billing-add-index')
p operator.approved_request_ids

approved_request = MigrationRequest.new('billing-add-index', :high, :ready)
p operator.can_run?(approved_request)
p approved_request.ready?
p approved_request.ready_with_negation?

draft_request = MigrationRequest.new('billing-add-column', :low, :draft)
p operator.can_run?(draft_request)
p draft_request.ready?
p draft_request.ready_with_negation?

low_risk_request = MigrationRequest.new('analytics-add-index', :low, :ready)
p operator.can_run?(low_risk_request)

unapproved_high_risk_request = MigrationRequest.new(
  'analytics-add-constraint',
  :high,
  :ready
)
p operator.can_run?(unapproved_high_risk_request)
