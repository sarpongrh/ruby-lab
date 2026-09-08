def database_batch_operations(batch_count)
  current_batch = 1
  until current_batch == batch_count + 1
    yield current_batch
    current_batch += 1
  end
  :completed
end

result = database_batch_operations(9) do |batch|
  puts "Processing batch #{batch}"
end
p result
