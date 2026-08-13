obj = Object.new
puts "The id of the obj is #{obj.object_id}."
str = 'Strings are objects too, and this is a string!'
puts "The id of the string object is #{str.object_id}."
puts "And the id of the int 100 is #{100.object_id}."

a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}"

obj = Object.new
if obj.respond_to?('talk')
  obj.talk
else
  puts "Sorry, the object does not understand the 'talk' message."
end
