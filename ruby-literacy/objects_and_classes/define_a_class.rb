class Ticket
  def event
    "Can't really be specified yet..."
  end
end

ticket = Ticket.new
puts ticket.event

# Reopening classes

class C
  # This class will be reopened with new methods
end

# Adding a new method
class C
  def x; end
end
