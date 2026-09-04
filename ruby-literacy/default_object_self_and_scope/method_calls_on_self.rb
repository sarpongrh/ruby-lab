class TableTarget
  attr_accessor :database, :schema, :table

  def qualified_name
    name = "#{database}."
    name << "#{schema}." if schema
    name << table
  end
end

table_target = TableTarget.new
table_target.database = 'billing'
table_target.table = 'invoices'
puts "Table target: #{table_target.qualified_name}"
table_target.schema = 'reporting'
puts "Table target: #{table_target.qualified_name}"
