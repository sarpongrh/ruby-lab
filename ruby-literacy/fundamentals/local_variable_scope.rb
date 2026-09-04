def prepare_rollback
  phase = 'rollback'
  puts phase
end

def start_rehearsal
  phase = 'preflight'
  puts phase
  prepare_rollback
  puts 'The phase in start_rehearsal is still:'
  puts phase
end

start_rehearsal

# Each method has its own local variable named phase.
# Calling prepare_rollback does not change phase inside start_rehearsal.
def compare_phases
  original_phase = 'preflight'
  preserved_phase = original_phase
  original_phase = 'rollback'
  puts original_phase
  puts preserved_phase
end

compare_phases
