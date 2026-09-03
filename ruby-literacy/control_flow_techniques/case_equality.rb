def status_code_meaning_for(status_code)
  case status_code
  when 200..299
    'Request succeeded'
  when 400..499
    'Client error'
  when 500..599
    'Server error'
  else
    'Unexpected response'
  end
end

success_meaning = status_code_meaning_for(202)
puts success_meaning

client_error_meaning = status_code_meaning_for(404)
puts client_error_meaning

server_error_meaning = status_code_meaning_for(503)
puts server_error_meaning

unexpected_error_meaning = status_code_meaning_for(700)
puts unexpected_error_meaning

# In a case expression, Ruby evaluates `when_value === case_value`.
p((200..299) === 204)
p((400..499) === 204)
p(204 === (200..299))
