class DatabaseError
  attr_accessor :sql_state_code

  def initialize(sql_state_code)
    @sql_state_code = sql_state_code
  end
end

class SqlStateCategory
  attr_accessor :sql_state_prefix

  def initialize(sql_state_prefix)
    @sql_state_prefix = sql_state_prefix
  end

  def connection_matches?(database_error)
    database_error.sql_state_code.start_with?(sql_state_prefix)
  end

  def ===(actual_error)
    actual_error.sql_state_code.start_with?(sql_state_prefix)
  end
end

error = DatabaseError.new('08006')
connection_category = SqlStateCategory.new('08')
p connection_category.connection_matches?(error)

integrity_category = SqlStateCategory.new('23')
connection_error = DatabaseError.new('08006')
DatabaseError.new('23505')
DatabaseError.new('42PfG')

actual_error = connection_error
classification = case actual_error
                 when connection_category
                   'Connection error'
                 when integrity_category
                   'Integrity constraint error'
                 else
                   'Unclassified database error'
                 end

puts classification
