def webhook_delivery_action_for(failure_reason)
  case failure_reason
  when :timeout, :connection_reset, :rate_limited
    'Retry webhook delivery'
  when :unauthorized, :forbidden
    'Stop delivery and alert'
  when :bad_request, :invalid_payload
    'Discard webhook'
  else
    'Unknown delivery failure'
  end
end

test_time_out = webhook_delivery_action_for(:timeout)
puts test_time_out

test_connection_reset = webhook_delivery_action_for(:connection_reset)
puts test_connection_reset

test_bad_request = webhook_delivery_action_for(:bad_request)
puts test_bad_request

test_dns_failure = webhook_delivery_action_for(:dns_failure)
puts test_dns_failure

test_forbidden = webhook_delivery_action_for(:forbidden)
puts test_forbidden
