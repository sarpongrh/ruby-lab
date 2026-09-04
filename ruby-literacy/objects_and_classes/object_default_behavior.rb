migration_record = Object.new
puts "The ID of the migration record is #{migration_record.object_id}."
operation_name = 'add_index'
puts "The ID of the operation-name string is #{operation_name.object_id}."
puts "The ID of the integer 100 is #{100.object_id}."

first_reference = Object.new
second_reference = first_reference
puts(
  "The first reference has ID #{first_reference.object_id} and " \
  "the second reference has ID #{second_reference.object_id}."
)

migration_record = Object.new
if migration_record.respond_to?('execute')
  migration_record.execute
else
  puts "The migration record does not understand the 'execute' message."
end
