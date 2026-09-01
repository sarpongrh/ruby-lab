maintenance_mode = false

if maintenance_mode
  query_result = 'success'
end

p query_result
# p backup_result

def find_available_replica
  replica_status = 'available'
  if (replica = /\Aunavailable\z/.match(replica_status))
    replica
  end
end

if (match_results = find_available_replica)
  p match_results
else
  p false
end
