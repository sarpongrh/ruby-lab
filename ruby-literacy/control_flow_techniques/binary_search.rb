event_ids = [10, 20, 30, 30, 45, 90, 12, 28, 39, 24, 6, 3, 10, 14, 16]
array = event_ids.sort

def iterative_binary_search(array, target)
  low = 0
  high = array.length - 1
  while low <= high
    middle = (low + high) / 2
    found = array[middle]
    if found == target
      return middle
    elsif found > target
      high = middle - 1
    else
      low = middle + 1
    end
  end
  nil
end

result = iterative_binary_search(array, 100)
p result
