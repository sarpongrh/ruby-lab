obj = Object.new
def obj.two_required_args(first_arg, second_arg)
  puts 'I require two args!'
  p first_arg, second_arg
end
obj.two_required_args(3, 4)

# If you pass more than initial argument contract defined,
# Ruby raises argument error

# Accepts n number of arguments
def obj.multi_args(*multiple_args)
  puts 'I can take zero or more arguments'
  p multiple_args
end
obj.multi_args(3, 4, 6, 8)

def two_or_more(first_arg, second_arg, *remaining_arg)
  puts 'I require two or more arguments!'
  puts 'And sure enough, I got: '
  p first_arg, second_arg, remaining_arg
end
two_or_more(2, 3, 5, 6, 6, 7, 8)

def default_args(first_arg, second_arg, default_arg = 1)
  puts 'Values of variables: ', first_arg, second_arg, default_arg
end

default_args(4, 5)

# The order of arguments matter, Ruby assigns the required arguments first
# Before the *args is assigned
def mixed_args(first_arg, second_arg, *multiple_args, last_arg)
  puts 'Arguments:'
  p first_arg, second_arg, multiple_args, last_arg
end
mixed_args(1, 2, 3, 4, 5)
