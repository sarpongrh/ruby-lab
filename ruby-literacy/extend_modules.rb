module Loud
  def shout
    "#{upcase}!!!"
  end
end

str = 'Hello'
str.extend(Loud)
puts str.shout
