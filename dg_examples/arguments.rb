def welcome(greeting, target)
  puts "#{greeting} #{target}"
end

welcome("Hello","World!")

welcome("Welcome","Dave")

# rder matters
welcome("World!","Hello")

def volume(x,y,z)
  x * y * z
end

puts volume(2,3,4)

puts volume(12,3,4)

# dg_examples/arguments.rb:12:in 'volume': wrong number of arguments (given 2, expected 3) (ArgumentError)
#         from dg_examples/arguments.rb:21:in '<main>'
# puts volume(2,3)

# g_examples/arguments.rb:12:in 'volume': wrong number of arguments (given 4, expected 3) (ArgumentError)
#         from dg_examples/arguments.rb:24:in '<main>'
# puts volume(1,2,3,4)