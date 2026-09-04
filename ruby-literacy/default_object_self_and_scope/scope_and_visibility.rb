$active_environment = 'staging'

class DeploymentReporter
  def report_environment
    puts $active_environment
  end
end

reporter = DeploymentReporter.new
reporter.report_environment

# A local variable in the class body is not shared with a method body.
class RetryConfiguration
  retry_limit = 1

  def local_retry_limit
    retry_limit = 2
    puts retry_limit
  end

  puts retry_limit
end

retry_configuration = RetryConfiguration.new
retry_configuration.local_retry_limit
