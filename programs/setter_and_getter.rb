class Ticket
  def initialize(venue, date, price)
    @venue = venue
    @date = date
    @price = price
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price
    @price
  end

  def discount(discount_percentage)
    price - ((price * discount_percentage) / 100.0)
  end
end

ticket = Ticket.new('Town Hall', '2026-08-18', 100)

puts(
  "The ticket for #{ticket.venue} on #{ticket.date} " \
  "has been discounted 15% to $#{'%.2f' % ticket.discount(15)}."
)
