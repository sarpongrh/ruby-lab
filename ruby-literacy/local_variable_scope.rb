def say_goodbye
  x = 'Goodbye'
  puts x
end

def start_here
  x = 'Hello'
  puts x
  say_goodbye
  puts "Let's check whether x remained the same: "
  puts x
end

start_here

# Each method has its own local variable named x.
# Calling say_goodbye does not change x inside start_here.
def say_both
  str = 'Hello'
  abc = str
  str = 'Goodbye'
  puts str
  puts abc
end

say_both
