require 'colorize'
require 'debug'

input_path = File.join(__dir__, 'input_files', 'temp.dat')
output_path = File.join(__dir__, 'output_files', 'calculated_temp.out')

def convert_celsius_to_fahrenheit(number)
  (number * 9 / 5) + 32
end

def save_converted_values_to_file(values, output_path)
  File.open(output_path, 'w') do |file|
    values.each do |value|
      file.puts value
    end
  end
end

puts "Reading Celsius values for conversion, path: #{input_path}".green
temperatures = File.readlines(input_path, chomp: true)
converted_values = []
temperatures.each do |temperature|
  celsius = temperature.to_i
  calculated_temp = convert_celsius_to_fahrenheit(celsius)
  puts "#{temperature} Celsius converts to #{calculated_temp} Fahrenheit"

  converted_values << calculated_temp
end

# binding.break
puts "Saving result to path: #{output_path}".yellow
save_converted_values_to_file(converted_values, output_path)
