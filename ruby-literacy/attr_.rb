# attr_accessor :price provides the same reader and writer behavior as:
# attr_reader :price
# attr_writer :price

class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end
