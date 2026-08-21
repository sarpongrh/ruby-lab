class Tickets
  # Constants
  VENUES = ['Convention Center', 'Market Square', 'Town Hall']
  def initialize(venue, date)
    raise ArgumentError, "Unknown venue #{venue}" unless VENUES.include?(venue)

    @venue = venue

    @date = date
  end
end
