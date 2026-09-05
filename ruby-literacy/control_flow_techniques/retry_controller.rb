successive_attempt_results = %i[timeout rate_limited success]

max_attempts = 3
attempt_count = 0
final_result = nil

loop do
  if attempt_count >= max_attempts
    final_result = 'Retries Exhausted'
    break
  end
  current_result = successive_attempt_results[attempt_count]
  if current_result.nil?
    final_result = 'No more attempt results'
    break
  end
  attempt_count += 1
  case current_result
  when :timeout, :rate_limited
    next
  when :success
    final_result = 'Success'
    break
  when :unauthorized
    final_result = 'Permanent failure'
    break
  end
end

puts final_result
