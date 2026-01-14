def subtract(n1,n2)
  result = n1 - n2
  result = 0 if result < 0
  result
end

puts subtract(8,3)

def add_and_subtract_hash(n1,n2)
  {:add => n1+n2, :sub => n1-n2}
end

def add_and_subtract(n1,n2)
  [n1+n2, n1-n2]
end

result = add_and_subtract_hash(8,3)
puts result
a,b = add_and_subtract(3,8)
puts a
puts b