def greatest_common_divisor(a, b)
    #puts a, b
  if a % b == 0
    b
  else
    greatest_common_divisor(b, a % b)
  end
end
puts greatest_common_divisor(111, 113)
