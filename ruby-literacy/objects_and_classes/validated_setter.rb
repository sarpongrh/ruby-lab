require 'time'

class Ticket
  attr_reader :date

  def initialize(venue)
    @venue = venue
  end

  def date=(accepted_date)
    @date = Time.strptime(accepted_date, '%Y-%m-%d')
  rescue ArgumentError
    puts "Please submit the date in the format 'yyyy-mm-dd'"
  end
end

ticket = Ticket.new('Town Hall')
ticket.date = '2026-08-19'
# ticket.date = "19/08/2026"
p ticket.date
