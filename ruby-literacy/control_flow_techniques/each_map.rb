query_latency = [84, 215, 97, 430, 120]

class Array
  def check_latency_with_each
    latency = 0
    until latency == size
      yield self[latency]
      latency += 1
    end
    self
  end

  def check_latency_with_map
    new_array = []
    check_latency_with_each do |latency|
      new_array << yield(latency)
    end
    new_array
  end
end

query_latency.check_latency_with_each { |latency| puts "Observed query latency: #{latency} ms" }

map = query_latency.check_latency_with_map do |latency|
  if latency <= 200
    :normal
  elsif latency > 200
    :slow
  end
end

p map
