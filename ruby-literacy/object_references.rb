def change_string(str)
  str.replace('New string content!')
end

# s= "Original string content"
# change_string(s)
# puts s

# Duping and freezing - protects objects from being changes inside methods
s = 'Original string content!'
change_string(s.dup) # to duplicate an object
puts s

# s = "Original string content!"
# s.freeze
# change_string(snd
