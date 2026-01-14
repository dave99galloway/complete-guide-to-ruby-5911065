value = 10

def output_value
  puts value
end

# errors

#output_value


# ruby dg_examples/variable_scope.rb 
# dg_examples/variable_scope.rb:4:in 'Object#output_value': undefined local variable or method 'value' for main (NameError)

#   puts value
#        ^^^^^
#         from dg_examples/variable_scope.rb:7:in '<main>'

def set_value
  value = 20
end

set_value

# value not updated as its a diffrent local var inside the method
puts value