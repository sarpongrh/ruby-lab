def convert_celsius_to_fahrenheit(number)
  (number * 9 / 5) + 32
end

def save_converted_values_to_file(values)
  File.open('calculated_temp.out', 'w') do |file|
    values.each do |value|
      file.puts value
    end
  end
end

temperatures = File.readlines('temp.dat', chomp: true)
converted_values = []
temperatures.each do |temperature|
  celsius = temperature.to_i
  calculated_temp = convert_celsius_to_fahrenheit(celsius)
  puts "#{temperature} Celsius converts to #{calculated_temp} Fahrenheit"

  converted_values << calculated_temp
end

save_converted_values_to_file(converted_values)
