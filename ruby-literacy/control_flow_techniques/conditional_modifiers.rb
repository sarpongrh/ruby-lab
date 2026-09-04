class MigrationRequest
  attr_reader :status

  def initialize(status)
    @status = status
  end

  def execution_block_reason
    'Migration request is not approved' unless @status == :approved
  end

  def execution_message
    'Migration request is ready to execute' if @status == :approved
  end
end

approved_request = MigrationRequest.new(:approved)
p approved_request.execution_block_reason
p approved_request.execution_message

draft_request = MigrationRequest.new(:draft)
p draft_request.execution_block_reason
p draft_request.execution_message
