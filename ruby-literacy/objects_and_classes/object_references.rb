def change_migration_state(state)
  state.replace('validated')
end

# state = 'pending'
# change_migration_state(state)
# puts state

# Duplicating the state protects the original object; freezing prevents mutation.
state = 'pending'
change_migration_state(state.dup)
puts state

# state = 'pending'
# state.freeze
# change_migration_state(state)
