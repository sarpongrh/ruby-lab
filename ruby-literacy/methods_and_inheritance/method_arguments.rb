metrics_reporter = Object.new

def metrics_reporter.report_two_metrics(latency_ms, lock_wait_ms)
  puts 'I require two metric values.'
  p latency_ms, lock_wait_ms
end

metrics_reporter.report_two_metrics(3, 4)

# Passing more arguments than the method contract accepts raises ArgumentError.

# A splat parameter accepts zero or more arguments.
def metrics_reporter.report_metrics(*measurements)
  puts 'I can take zero or more metric values.'
  p measurements
end

metrics_reporter.report_metrics(3, 4, 6, 8)

def report_two_or_more_metrics(first_metric, second_metric, *remaining_metrics)
  puts 'I require two or more metric values.'
  puts 'And sure enough, I got:'
  p first_metric, second_metric, remaining_metrics
end

report_two_or_more_metrics(2, 3, 5, 6, 6, 7, 8)

def report_with_default_timeout(latency_ms, lock_wait_ms, timeout_seconds = 30)
  puts 'Metric values:', latency_ms, lock_wait_ms, timeout_seconds
end

report_with_default_timeout(4, 5)

# Argument order matters. Ruby assigns required arguments before the splat
# parameter receives the remaining values.
def report_mixed_metrics(first_metric, second_metric, *intermediate_metrics, run_id)
  puts 'Metric values:'
  p first_metric, second_metric, intermediate_metrics, run_id
end

report_mixed_metrics(1, 2, 3, 4, 'run-001')
