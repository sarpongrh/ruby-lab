module TraceLabel
  def trace_label
    "#{upcase}:REHEARSAL"
  end
end

operation_name = 'add_index'
operation_name.extend(TraceLabel)
puts operation_name.trace_label
