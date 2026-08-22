class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end
end

ticket = Ticket.new('Town Hall', '2025-11-12')
ticket.price = 63.00
puts "The ticket costs $#{'%.2f' % ticket.price}."
ticket.price = 72.50
puts "Whoops -- it just went up. It now costs $#{'%.2f' % ticket.price}."

# A setter method like price= is not about printing the value back.
# It is about deciding what should happen when someone assigns a value to price.
# The assignment expression still evaluates to the assigned value, 111.22.
class Silly
  def price=(_amount)
    puts "The current time is #{Time.now}"
  end
end

s = Silly.new
puts(s.price = 111.22)
